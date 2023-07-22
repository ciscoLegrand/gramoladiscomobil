class ApplicationMailer < ActionMailer::Base
  default from: "cisco.glez@gmail.com"
  layout "mailer"
  prepend_view_path "app/views/mailers"
end
