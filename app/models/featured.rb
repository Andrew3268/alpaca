class Featured < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tags

  after_create do
      featured = Featured.find_by(id: self.id)
      fhashtags = self.ff_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      fhashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          featured.tags << tag
      end
  end
  
  before_update do
      featured = Featured.find_by(id: self.id)
      featured.tags.clear
      fhashtags = self.ff_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      fhashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          featured.tags << tag
      end
  end

end


