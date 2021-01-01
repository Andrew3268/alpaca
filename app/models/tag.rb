class Tag < ApplicationRecord
  has_and_belongs_to_many :posts
  has_and_belongs_to_many :sales
  has_and_belongs_to_many :featureds
  has_and_belongs_to_many :guides
end
