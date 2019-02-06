class Product < ApplicationRecord
  belongs_to :category
  has_many :reviews, dependent: :delete_all
  has_one_attached :image


  # def show
  #   @prouducts = Post.all
  #   render json: { posts: @products }, include: :image # Image is the attachment
  # end
end
