module ApplicationHelper
  def flash_html_class(type)
    case type
    when 'success'
      'success'
    when 'error'
      'danger'
    end
  end
end
