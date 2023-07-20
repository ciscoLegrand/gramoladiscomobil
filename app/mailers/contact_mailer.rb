class ContactMailer < ApplicationMailer
  default from: 'no-reply@ciscolegrand.dev'

  def client_email(contact)
    @contact = contact
    mail(to: @contact.email, subject: 'Gracias por tu petición') do |format|
      format.html { render 'mailers/contact/client_email' }
    end
  end

  def admin_email(contact)
    @contact = contact
    mail(to: 'cisco.glez@gmail.com', subject: 'Nueva petición de contacto') do |format|
      format.html { render 'mailers/contact/admin_email' }
    end
  end
end
