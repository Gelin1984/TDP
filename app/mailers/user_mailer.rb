class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
    @message = message
    mail( from:email,
      to: 'gdopart1984@gmail.com',
    subject: "Siemanko Grzesiu! #{name}, #{email}")

  end


  def welcome(user)
    mail(to: user.email, subject: "Welcome")
  end

  def order_placed(user, order)
  	@user = user
  	@product = order.product
  	@order = order
  	mail(to: user.email, subject: "Thank You")
end   
end
 