When /^I am on the (.+) page$/ do |page|
  visit path_for(page)
end

When /^I click "(.*?)" in the navigation links$/ do |link|
  click_link link
end

Then /^I should be on the (.+) page$/ do |current_page|
  page.current_path.should eql path_for(current_page)
end