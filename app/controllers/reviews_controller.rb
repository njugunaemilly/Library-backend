class ReviewsController < ApplicationController

  before_action :set_review, only: [:show, :update, :destroy]

  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]

  def index
    @reviews = Review.all
    render json: @reviews
  end

  def show
    if @review
      render json: @review
    else 
      render json: { error: "Review not found" }, status: :not_found
    end
  end

  def create
    @user = User.find_by(id: params[:user_id])

    @book = Book.find_by(id: params[:book_id])

    @review = Review.new(review_params)

    if @review.save
      render json: @review, status: :created
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @review.update(review_params)
      render json: @review
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @review.destroy
    head :no_content
    render json: {errors: @review.errors.full_messages }, status: :unprocessable_entity
  end

  private

  def set_review
    @review = Review.find_by(id: params[:id])
    render json: { error: "Review not found" }, status: :not_found unless @review
  end
    
  def review_params
    params.require(:review).permit(:comment, :user_id, :book_id)
  end
end
