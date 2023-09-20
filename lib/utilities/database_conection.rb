# Instalar y cargar las gemas requeridas
require 'bundler/inline'
puts "🔄 [#{Time.now}] Instalando y cargando gemas..."

gemfile do
  source 'https://rubygems.org'
  gem 'pg'
  gem 'net-ssh'
  gem 'net-ssh-gateway'
  gem 'tty-prompt'
  gem 'httparty'
  gem 'byebug'
  gem 'caxlsx'
  gem 'figaro'
  gem 'ed25519', '>= 1.2', '< 2.0'
  gem 'bcrypt_pbkdf', '>= 1.0', '< 2.0'
end

puts "✅ [#{Time.now}] Gemas instaladas y cargadas correctamente."

# Ahora requerimos las gemas
require 'pg'
require 'net/ssh/gateway'
require 'tty-prompt'
require 'figaro'

# Inicializar Figaro con la ruta absoluta a application.yml
puts "🔄 [#{Time.now}] Cargando configuración de Figaro..."
config_path = File.expand_path('../../config/application.yml', __dir__)
Figaro.application = Figaro::Application.new(environment: "development", path: config_path)
Figaro.load

prompt = TTY::Prompt.new(active_color: :blue, help_color: :green)



def request_data(prompt)

  # if ssh_host == 'q!' || ssh_user == 'q!' || ssh_key == 'q!' || ssh_password == 'q!' || db_host == 'q!' || db_port == 'q!' || db_name == 'q!' || db_user == 'q!' || db_pass == 'q!'
  #   puts "🚫 [#{Time.now}] Saliendo del script..."
  #   exit
  # end

  ssh_host = prompt.ask(prompt.decorate("SSH Host:", :blue))
  return if ssh_host.nil? || ssh_host.strip.empty?

  ssh_user = prompt.ask(prompt.decorate("SSH User:", :blue))
  return if ssh_user.nil? || ssh_user.strip.empty?

  ssh_key = prompt.ask(prompt.decorate("SSH Private Key:", :blue))
  return if ssh_key.nil? || ssh_key.strip.empty?

  ssh_password = prompt.mask(prompt.decorate("SSH Password (deja en blanco si no es necesario):", :blue))
  return if ssh_password.nil? || ssh_password.strip.empty?

  db_host = prompt.ask(prompt.decorate("Database Host:", :blue))
  return if db_host.nil? || db_host.strip.empty?

  db_port = prompt.ask(prompt.decorate("Database Port:", :blue))
  return if db_port.nil? || db_port.strip.empty?

  db_name = prompt.ask(prompt.decorate("Database Name:", :blue))
  return if db_name.nil? || db_name.strip.empty?

  db_user = prompt.ask(prompt.decorate("Database Username:", :blue))
  return if db_user.nil? || db_user.strip.empty?

  db_pass = prompt.mask(prompt.decorate("Database Password:", :blue))
  return if db_pass.nil? || db_pass.strip.empty?

  # Confirmar si los datos ingresados son correctos o si el usuario quiere regresar
  if prompt.yes?(prompt.decorate('🔍 ¿Son correctos los datos ingresados?', :red))
    return [ssh_host, ssh_user, ssh_key, ssh_password, db_host, db_port, db_name, db_user, db_pass]
  else
    puts "🔙 Regresando al paso anterior..."
    main_prompt(prompt)
  end
end

def establish_ssh_tunnel(ssh_host, ssh_user, ssh_password, db_host, db_port)
  begin
    gateway = Net::SSH::Gateway.new(ssh_host, ssh_user, password: ssh_password)
    local_port = gateway.open(db_host, db_port)
    return gateway, local_port
  rescue => e
    puts "❌ [#{Time.now}] Error al establecer el túnel SSH: #{e.class} - #{e.message}"
    puts e.backtrace.join("\n") # Esto imprimirá más detalles sobre el error
    return nil, nil
  end
end

def main_prompt(prompt)
  if prompt.yes?(prompt.decorate('🔧 ¿Deseas introducir los datos de conexión manualmente?', :green))
    data = request_data(prompt)
    if data.nil? || data.any?(&:nil?)
      puts "Datos incompletos. Regresando al paso anterior..."
      main_prompt(prompt)
    else
      ssh_host, ssh_user, ssh_key, db_host, db_port, db_name, db_user, db_pass = data
    end
  else
    # Usar las variables de entorno de Figaro
    puts "📌 [#{Time.now}] Usando las siguientes variables de entorno:"
    ssh_host = Figaro.env.SSH_HOST
    ssh_user = Figaro.env.SSH_USER
    ssh_key = Figaro.env.SSH_PRIVATE_KEY
    ssh_password = Figaro.env.SSH_PASSWORD
    db_host = Figaro.env.EXTERNAL_DB_HOST
    db_port = Figaro.env.EXTERNAL_DB_PORT
    db_name = Figaro.env.EXTERNAL_DB_NAME
    db_user = Figaro.env.EXTERNAL_DB_USERNAME
    db_pass = Figaro.env.EXTERNAL_DB_PASSWORD

    # Mostrar las variables de entorno
    prompt.ok("Usando las siguientes variables de entorno:")
    puts "SSH Host: #{ssh_host}"
    puts "SSH User: #{ssh_user}"
    puts "SSH Private Key: #{ssh_key}"
    puts "SSH Password: #{ssh_password}"
    puts "Database Host: #{db_host}"
    puts "Database Port: #{db_port}"
    puts "Database Name: #{db_name}"
    puts "Database Username: #{db_user}"
    puts "Database Password: #{db_pass}"
  end

  # Establecer túnel SSH
  puts "🔄 [#{Time.now}] Estableciendo túnel SSH..."
  gateway, local_port = establish_ssh_tunnel(ssh_host, ssh_user, ssh_password, db_host, db_port)

  if gateway.nil? || local_port.nil?
    puts "❌ [#{Time.now}] No se pudo establecer el túnel SSH."
    decision = prompt.select("¿Qué deseas hacer?", ["Continuar", "Cerrar"])
    if decision == "Continuar"
      main_prompt(prompt)
      return
    else
      puts "🚫 [#{Time.now}] Saliendo del script..."
      return
    end
  end

  # Establecer conexión con la base de datos a través del túnel
  puts "🔄 [#{Time.now}] Estableciendo conexión con la base de datos a través del túnel..."
  begin
    connection = PG.connect(host: '127.0.0.1', port: local_port, dbname: db_name, user: db_user, password: db_pass)
    puts "✅ [#{Time.now}] Conexión establecida con éxito a la base de datos: #{connection.db}"
  rescue PG::Error => e
    puts "❌ [#{Time.now}] Error al conectar con la base de datos: #{e.message}"
  ensure
    connection.close if connection
    gateway.shutdown! if gateway
  end
end
main_prompt(prompt)
# Aquí puedes continuar con el resto del script para establecer la conexión y realizar las operaciones deseadas.
