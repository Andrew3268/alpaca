class Post < ApplicationRecord
  belongs_to :category
  belongs_to :shop
  belongs_to :guide
end
