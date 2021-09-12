class ProductsController < ApplicationController
    def index
        render json: {
            status: 200,
            product:  Product.first
        }
    end

    private
    def product_params
        params.require(:product).permit(:title)
    end
end
