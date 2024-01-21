class UserMailer < ActionMailer::Base
   default from: 'no-reply@example.com'
   def reset_password_email(user)
     @user = user
     mail(to: @user.email, subject: 'Resetowanie hasła')
   end
end
