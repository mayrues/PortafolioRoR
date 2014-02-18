class NotificacionMail < ActionMailer::Base
  default :from => "espinosamayte@gmail.com"
  default :to => "espinosamayte@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[Portafolio-Mayte] #{message.asunto}")
  end
end
