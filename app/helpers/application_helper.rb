module ApplicationHelper
  
  def console str
    puts "\033[1;34;40m#{str}\033[0m"
  end

  def log str
    console str
  end

end
