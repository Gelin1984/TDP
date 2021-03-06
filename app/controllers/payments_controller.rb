class PaymentsController < ApplicationController

    def create
        @product = Product.find(params[:product_id])
        @user = current_user

        token = params[:stripeToken]
        begin
            charge = Stripe::Charge.create(
                amount: (@product.price*100).to_i,
                currency: "usd",
                source: token,
                description: params[:stripeEmail]
            )
        

		if charge.paid
            order = Order.create(
              product_id: @product.id,
              user_id: @user.id,
              total: @product.price
            )
            flash[:notice] = "Your payment was processed successfully"
            UserMailer.order_placed(@user, order).deliver_now
        end

    rescue Stripe::CardError => e
    # The card has been declined
    body = e.json_body
    err = body[:error]
    flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
  end

  redirect_to product_path(@product)
  
end
end


