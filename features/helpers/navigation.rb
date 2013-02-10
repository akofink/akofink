def path_for(str)
  case str
    when 'home'
      '/'
    else
      "/#{str}"
  end
end