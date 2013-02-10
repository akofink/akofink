When /^I am on the (.+) page$/ do |page|
  visit path_for(page)
end