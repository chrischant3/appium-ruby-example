Given(/^I visit the google homepage$/) do
  base_page.visit_page('http://google.co.uk')
end

When(/^I search for "([^"]*)"$/) do |arg|
  pending
end

Then(/^I expect the results page to be correctly displayed$/) do
  pending
end