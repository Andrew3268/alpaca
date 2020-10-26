class Post < ApplicationRecord

  validates :link, presence: true
  
  belongs_to :category
  belongs_to :shop
  # belongs_to :guide
  belongs_to :user
  has_many :order_items
  has_and_belongs_to_many :tags
  has_one_attached :post_image

  after_create do
      post = Post.find_by(id: self.id)
      hashtags = self.p_spare_02.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      hashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          post.tags << tag
      end
  end
  
  before_update do
      post = Post.find_by(id: self.id)
      post.tags.clear
      hashtags = self.p_spare_02.scan(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/)
      hashtags.uniq.map do |hashtag|
          tag = Tag.find_or_create_by(name: hashtag.downcase.delete('#'))
          post.tags << tag
      end
  end

  def self.search_by(search_term)
    where("LOWER(title) LIKE :search_term", 
    search_term: "%#{search_term.downcase}%")
  end

end
        
