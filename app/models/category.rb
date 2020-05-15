class Category < ApplicationRecord
  has_one_attached :category_image
  belongs_to :user
end
