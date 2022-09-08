class ApplicationController < ActionController::Base

    before_action :load_cart

    def load_cart
      @cart = Cart.find_by(id: session[:cart_id]) if session[:cart_id].present?
    end
    
end
