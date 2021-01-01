class Guide < ApplicationRecord
  has_and_belongs_to_many :tags
  has_one_attached :guide_image
  belongs_to :user

  after_create do
      guide = Guide.find_by(id: self.id)
      guihashtags = self.gui_link.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      guihashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          guide.tags << tag
      end
  end
  
  before_update do
      guide = Guide.find_by(id: self.id)
      guide.tags.clear
      guihashtags = self.gui_link.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      guihashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          guide.tags << tag
      end
  end

end
