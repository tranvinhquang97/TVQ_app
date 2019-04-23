module ApplicationHelper
  def full_title page_title = ""
    base_title = t "Ruby on Rails Sample App"
    page_title.empty? ? base_title : page_title + " | " + base_title
  end
end
