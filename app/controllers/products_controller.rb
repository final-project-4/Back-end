class ProductsController < ApplicationController

    before_action :set_product, only: [:show, :update, :destroy]
    def index 
        @products = Product.all
        render json: @products
    end
    
    
    def show
        render json: @product
    end
    
    
    def create 
        @product = Product.create(product_params)
        render json: @product
    end 
    
    def update 
        @product.update_attributes(product_params)
        render json: @product
    end
    
    
    def destroy
        @product.destroy
        render json: {message:"success"}
    end 
    
    
    private 
    
    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(
        :name, :brand, :description, :expected_price, :color, :model_year, :image, :category_id)
    end 
    
    
end
