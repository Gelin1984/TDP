class OrdersController < ApplicationController
before_action :authenticate_user!

  def index
    if current_user.admin?
      @orders = Order.includes(:product)
    else
      @orders = current_user.orders.includes(:product)

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