class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

  def pay
    @cart = Cart.find(params[:id])
    Stripe.api_key = Rails.configuration.stripe[:secret_key]
    sessionStripe = Stripe::Checkout::Session.create(
      mode: 'payment',
      customer_email: 'xhosone@gmail.com',
      line_items: [{
        quantity: 1,
        price_data: {
          currency: "usd",
          unit_amount: (@cart.total_price * 100).to_i,
          product_data: {
            name: "name of the product"
          },
        },
      }],
      success_url: root_url + 'success?session_id={CHECKOUT_SESSION_ID}',
      cancel_url: root_url + 'cancel',
    )
    redirect_to sessionStripe.url, allow_other_host: true
  end
end
