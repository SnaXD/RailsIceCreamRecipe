module ApplicationHelper
  def nav_link_classes(path)
    base = "inline-flex items-center border-b-2 px-1 pt-1 text-sm font-medium"

    if current_page?(path)
      "#{base} border-gray-200 text-white"
    else
      "#{base} border-transparent text-gray-400 hover:border-gray-200 hover:text-gray-100"
    end
  end
end
