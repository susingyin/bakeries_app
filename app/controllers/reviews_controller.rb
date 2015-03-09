class ReviewsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :show, :edit, :create, :update, :destroy, :index]
    def index
  		@reviews = Review.all
    end

    def create
     	@product = Product.find(params[:product_id])
      @review = @product.reviews.create(review_params)
      redirect_to product_path(@product)
   #    @review = Review.new(safe_review_params)
		 # if @review.save
		 # 	redirect_to @review
		 # else
		 # 	render 'new'
		 # end
    end

    def new
    	@review = Review.new
    end

    def edit
    	@review = Review.find(params[:id])
    end

    def show
    	@review = Review.find(params[:id])
    end

    def update
     	@review = Review.find(params[:id])
     	if @review.update(safe_review_params)
		 	redirect_to @review
		else
		 	render 'edit'
		end
    end

    def destroy
     	@product = Product.find(params[:product_id])
		  @review = @product.reviews.find(params[:id])
      @review.destroy
		  redirect_to product_path(@product)
    end

	private
		def review_params
			params.require(:review).permit(:description, :stars)
		end

		# def set_review
		# 	@review = Review.find(params[:id])
		# end
	end
