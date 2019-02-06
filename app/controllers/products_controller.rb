class ProductsController < ApplicationController

    before_action :set_product, only: [:show, :update, :destroy]
    def index 
        @products = Product.all
        # byebug
        result = @products.map do | product |
            image = url_for( product.image ) rescue nil
            product.as_json.merge( { image: image } )
        end
        render json: result
    end
    
    
    def show
        render json: @product.as_json.merge( { image: url_for( @product.image ) } )
    end
    
    
    def create 
        @product = Product.create(product_params)
        render json: @product.as_json.merge( { image: url_for( @product.image ) } )
    end 
    
    def update 
        update_params = product_params[ :image ].class == String ? product_params.except( :image ) : product_params
        @product.update_attributes(update_params)
        render json: @product.as_json.merge( { image: url_for( @product.image ) } )
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
