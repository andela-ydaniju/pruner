module ApplicationHelper
  def full_title(page_title = "")
    base_title = "for the finest of links"
    if page_title.nil?
      " - " + base_title
    else
      " | " + page_title + " - " + base_title
    end
  end
end
