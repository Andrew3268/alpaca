class Featured < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tags

  after_create do
      featured = Featured.find_by(id: self.id)
      f_hashtags = self.ff_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      f_hashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          featured.tags << tag
      end
  end
  
  before_update do
      featured = Featured.find_by(id: self.id)
      featured.tags.clear
      f_hashtags = self.ff_hashtag.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      f_hashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          featured.tags << tag
      end
  end

end


