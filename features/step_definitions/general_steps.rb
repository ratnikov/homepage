require 'gravatar'

When /^I visit "(.*)"$/ do |path|
  visit path
end

Then /^I should see "(.*)" gravatar$/ do |email|
  page.should have_xpath("//img[@src='#{Gravatar.url(email)}']")
end
