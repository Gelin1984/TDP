class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'gregory.dopart@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
  	mail (to: user.email, subject: "Welcome")
end

end   