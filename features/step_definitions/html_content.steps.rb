Then /^I should see the (.+) tag with the value "(.+)"$/ do |tag, value|
  page.should have_selector(tag, text:value)
end