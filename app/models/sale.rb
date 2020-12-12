class Sale < ApplicationRecord
  # belongs_to :scategory
  belongs_to :user
  has_and_belongs_to_many :tags
  has_one_attached :sale_image


  validates :s_is_price, presence: true
  validates :s_was_price, presence: true
  validates :s_hashtag, presence: true
  

  after_create do
      sale = Sale.find_by(id: self.id)
      shashtags = self.s_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      shashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          sale.tags << tag
      end
  end
  
  before_update do
      sale = Sale.find_by(id: self.id)
      sale.tags.clear
      shashtags = self.s_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      shashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          sale.tags << tag
      end
  end

end
