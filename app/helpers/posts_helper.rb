module PostsHelper
  def render_with_hashtags(p_spare_02)
    p_spare_02.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/posts/hashtag/#{word.delete('#')}"}.html_safe
  end 
end
