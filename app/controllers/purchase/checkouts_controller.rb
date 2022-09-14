class Purchase::CheckoutsController < ApplicationController
    def success
        @cart.update(status: "completed")
        session.delete(:cart_id)
        session = Stripe::Checkout::Session.retrieve(params[:session_id])
    end
    def cancel
    end
end