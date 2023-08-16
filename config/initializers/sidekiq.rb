# Sidekiq.configure_server do |config|
#   config.redis = { url: 'redis://localhost:6379/0' }
#   config.average_scheduled_poll_interval = 15
#   config.redis = { url: ENV.fetch('REDIS_URL', 'redis://localhost:6379/0') }
#   # config.sidekiq = YAML.load_file(File.join(Rails.root, 'config', 'sidekiq.yml'))
# end
