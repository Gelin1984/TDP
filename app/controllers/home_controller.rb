class HomeController < ApplicationController
  def index
  end

  def about
  end

  def landing_page
    @featured_product = Product.order("RANDOM()").first
  end

  def contact
  end

  def faq
  end

end