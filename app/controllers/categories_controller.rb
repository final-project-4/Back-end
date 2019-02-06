class CategoriesController < ApplicationController 

    before_action :set_category, only: [:show, :destroy]
    def index 
        @categories = Category.all
        render json: @categories
    end
    
    
    def show
        render json: @category
    end
    
    
    def create 
        @category = Category.create(category_params)
        render json: @category
    end 
    
    def update 
        @category.update_attributes(category_params)
        render json: @category
    end
    
    
    def destroy
        @category.destroy
        render json: {message:"success"}
    end 
    
    
    private 
    
    def set_category
        @category = Category.find(params[:id])
    end

    def category_params
        params.require(:category).permit(
        :name)
    end 

    
end