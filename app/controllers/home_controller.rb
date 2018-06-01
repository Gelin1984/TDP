class HomeController < ApplicationController
def index
end

def about
end

def landing_page
@products = Product.limit(3)

end

def contact
end

def faq
end

def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(from: @email,
      to: 'gregory.dopart@gmail.com',
      subject: "A new contact form message from #{@name}",
      body: @message).deliver_now
end

end