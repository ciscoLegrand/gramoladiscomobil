class ErrorMailer < ApplicationMailer
  def import_error(exception, backtrace)
    @exception = exception
    @backtrace = backtrace
    mail(to: 'cisco.glez@gmail.com', subject: 'Error durante la importación en la ejecucion de la tarea import_active_storage_images de ')
  end
end
