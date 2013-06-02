module IdeasHelper

  def idea_image idea
    image_url = idea.images.sample.try(:image_url) || "squared_paper.png"
    image_tag(image_url)
  end

  def idea_user_count idea
    count = idea.users.count
    return '' if count == 0
    ("<span class=\"fui-man-16\"></span>#{count}").html_safe
  end

end
