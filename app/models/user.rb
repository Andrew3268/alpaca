class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :categories
  has_many :shops
  has_many :guides
  has_many :sales
  has_many :scategories
  has_many :featureds
  has_many :halfprices
  has_many :hfcategories
end
