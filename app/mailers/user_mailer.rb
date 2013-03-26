class UserMailer < ActionMailer::Base
  default from: "ucc.summercourses.robot@gmail.com"

  def welcome_email(user)
  	@user = user
  	@usr = "http://localhost:3000/users/sign_up"
  	mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
end
