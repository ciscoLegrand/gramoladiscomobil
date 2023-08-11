class ErrorMailer < ApplicationMailer
  def import_error(exception, backtrace, info)
    @exception = exception
    @backtrace = backtrace
    @info = info
    subject = @exception.nil? ? 'Finalizada correctamente la' : 'Error en la'
    mail(to: 'cisco.glez@gmail.com', subject: "#{subject} - #{info[:process_name]}")
  end
end
