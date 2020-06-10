class Post < ApplicationRecord
  belongs_to :category
  belongs_to :shop
  # belongs_to :guide
  belongs_to :user
  has_many :order_items

  has_one_attached :post_image
end
