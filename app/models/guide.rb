class Guide < ApplicationRecord
  has_one_attached :guide_image
  belongs_to :user
end
