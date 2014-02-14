module ApplicationHelper
  
  def console str
    puts "\033[1;34;40m#{str}\033[0m"
  end

  def log str
    console str
  end

  def markdown str
    @markdown.render(str).html_safe
  end

  def link_back(default = :root)
    link_to (request.env['HTTP_REFERER'] ? :back : default) do
      "#{fa_icon 'arrow-left'} Back".html_safe
    end
  end
end
