class ProductsController < ApplicationController
  include Pagination
  $page = 1
  $pageNumber = 0
  $pageSize = 12
  $totalElements = 0
  $elementPerPage = 0
  def index
    @products = Product.order(:title).to_a
  end

  def show
    pp = params[:page]
    if pp
      $page = pp.to_i <= 1 ? pp.to_i : pp.to_i
    else
      $page = 1
    end
    category = Category.find_by("LOWER(name)= ?", params[:id].downcase)
    $totalElements = category.products.size
    $pageNumber = ($totalElements.to_f / $pageSize.to_f).to_f.ceil
    aux = category.products.limit($pageSize).offset(($page - 1) * 12)
    $elementPerPage = aux.size
    @products = aux
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
    cp = cart.cartships.find_by(product_id: product.id)
    if cp.nil?
      cart.cartships.create(product_id: product.id, quantity: 1)
    else
      cp.update(product_id: product.id, quantity: (cp.quantity + 1))
    end
    redirect_to cart
  end
  
end
