class ProductsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :show, :edit, :create, :update, :destroy, :index]
	def index
  		@products = params[:id] ? Product.search_for(params[:id]) : Product.all
  	end

	def create
		@product = Product.new(product_params)
		
		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end

	def new
		@product = Product.new
	end

	def edit
		@product = Product.find(params[:id])
	end

	def show
  		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		
		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end

		# if user_params.is_seller == false
  # 			redirect_to root_url :flash "Only sellers can change products"
  # 		end
	end

	def destroy
	  	@product = Product.find(params[:id])
		@product.destroy
		
		redirect_to products_path
	end

	private

		def product_params
			params.require('product').permit(:title, :category, :photo, :price)
		end

		def set_product
			@product = Product.find(params[:id])
		end

	end
