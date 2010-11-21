Given /^profile attributes are as follows:$/ do |table|
  attributes = table.rows_hash
  attributes['links'] = attributes['links'].split /,\s+/ if attributes['links']

  stub( Profile ).yaml_config.returns attributes
end

Then /^I should see a (\w+) tag$/ do |tag_name|
  page.should have_xpath("//li[@class='#{tag_name}']")
end
