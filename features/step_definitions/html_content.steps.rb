Then /^I should see the (.+) tag$/ do |tag|
  page.should have_selector(tag)
end

Then /^I should see the (.+) tag with the value "(.+)"$/ do |tag, value|
  page.should have_selector(tag, text:value)
end

Then /^I should see the navigation links$/ do
  step 'I should see the nav tag'
end

When /^I click "(.*?)"$/ do |link_name|
  click_link link_name
end

When /^I fill in (.*?) into the (.+) field$/ do |content, field|
  fill_in field, :with => content
end

When /^I press (.*?)$/ do |button_name|
  click_button button_name
end

Then /^I should be able to see "(.*?)"$/ do |content|
  page.should have_content content
end

Then /^"(.*?)" should be destroyed$/ do |content|
  page.should_not have_content content
end

When /^there is a (.+) object "(.*?)"$/ do |object, content|
  step "I am on the #{object} page"
  step "I fill in '#{content}' into the Content field"
  step "I fill in 'Title' into the Title field"
  step "I press Post"
end