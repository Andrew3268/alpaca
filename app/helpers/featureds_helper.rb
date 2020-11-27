module FeaturedsHelper
  def render_with_hashtags(ff_hashtag)
    ff_hashtag.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/feathreds/fhashtag/#{word.delete('#')}"}.html_safe
  end
end


