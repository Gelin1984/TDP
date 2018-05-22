class OrdersController < ApplicationController
before_action :authenticate_user!

  def index
    if current_user.admin?
      @orders = Order.include(:products)
    else
      @orders = current_user.orders.include(:products)

    end
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

end