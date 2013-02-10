Then /^I should see the (.+) tag$/ do |tag|
  page.should have_selector(tag)
end

Then /^I should see the (.+) tag with the value "(.+)"$/ do |tag, value|
  page.should have_selector(tag, text:value)
end

Then /^I should see the navigation links$/ do
  step 'I should see the nav tag'
end