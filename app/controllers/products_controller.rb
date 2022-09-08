class ProductsController < ApplicationController
  def index
    @products = Product.order(:title).to_a
  end

  def show
    category = Category.find_by("LOWER(name)= ?", params[:id].downcase)
    @products = category.products
    url = params[:id] # throws error if no url
    puts url
  end

  def add_to_cart
    if session[:cart_id].blank?
      cart = Cart.create(status: "pending")
      session[:cart_id] = cart.id
    else
      cart = Cart.find_by(id: session[:cart_id])
    end
    
    product = Product.find(params[:id])
    cart.cartships.create(product_id: product.id, quantity: 1)
    redirect_to cart
  end
  
end
