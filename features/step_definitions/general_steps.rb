require 'gravatar'

When /^I visit "(.*)"$/ do |path|
  visit path
end

Then /^I should see "(.*)" gravatar$/ do |email|
  page.should have_xpath("//img[@src='#{Gravatar.url(email, :size => 200)}']")
end

Then /^I should see a link to "(.*)"$/ do |url|
  page.should have_xpath("//a[@href='#{url}']")
end
