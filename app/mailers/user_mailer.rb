class UserMailer < ActionMailer::Base

  default :from => 'info@kukya.com'

  def activation_email(user)
    @user = user
    mail(:to => @user.email,
         :subject => 'Вашиот профил е авторизира')
  end

end