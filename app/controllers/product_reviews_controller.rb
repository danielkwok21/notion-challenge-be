class ProductReviewsController < ApplicationController
    def index
        render json: {
            status: 200,
            reviews: ProductReview.all
        }
    end

    def create
        review = ProductReview.new(review_params)
        if review.save
            render json: {
                status: 200,
                review:review,
            }
        else
            render json: {
                status: 401,
                errors: review.errors
            }
        end
    end

    private
    def review_params
        params.require(:review).permit(:comment, :stars)
    end
end
