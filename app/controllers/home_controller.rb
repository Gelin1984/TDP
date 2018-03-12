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

end