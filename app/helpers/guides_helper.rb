module GuidesHelper
  def render_with_guihashtags(gui_link)
    gui_link.gsub(/[#＃][a-z|A-Z|가-힣|0-9|\w]+/){|word| link_to word, "/guides/guihashtag/#{word.delete('#')}"}.html_safe
  end
end
