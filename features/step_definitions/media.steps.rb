When /^I fill in '(.*?)' into the text field$/ do |html|
  fill_in 'media[html]', :with => html
end

When /^I press (.*?)$/ do |button_name|
  click_button button_name
end

Then /^I should be able to see "(.*?)"$/ do |html|
  page.should have_content html
end

When /^there is a media object "(.*?)"$/ do |media_obj|
  step "I am on the media page"
  step "I fill in '#{media_obj}' into the text field"
  step "I press Post"
end

When /^I click "(.*?)"$/ do |link_name|
  click_link link_name
end

Then /^"(.*?)" should be destroyed$/ do |media_obj|
  page.should_not have_content media_obj
end