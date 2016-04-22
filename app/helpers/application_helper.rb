module ApplicationHelper
  def create_active_link(text, path)
    class_name = current_page?(path) ? 'active' : ''

    link_to text, path, class: class_name
  end
end