module ApplicationHelper

  def admin?
    current_user.try(:email) == "dan2552@gmail.com"
  end

  def button text, url, cls=""
    link_to(url, class: "btn btn-large btn-primary #{cls}") do
      text
    end
  end

end
