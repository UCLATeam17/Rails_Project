class NotificationsMailer < ActionMailer::Base

  default :from => "uccteamproject17@gmail.com"
  default :to => "uccteamproject17@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[UCC Summer Courses] #{@message.subject}")
  end

end
