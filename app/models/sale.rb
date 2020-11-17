class Sale < ApplicationRecord
  belongs_to :scategory
  has_and_belongs_to_many :tags
  belongs_to :user
  has_one_attached :sale_image

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
