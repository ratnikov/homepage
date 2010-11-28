Given /^profile attributes are as follows:$/ do |table|
  attributes = table.rows_hash
  attributes['links'] = attributes['links'].split /,\s+/ if attributes['links']

  stub( Profile ).yaml_config.returns attributes
end

Given /^profile includes following skills:$/ do |table|
  skills = table.raw.flatten.inject({}) do |acc, skill|
    (group, name) = skill.split /\s*:\s*/
    acc[group] ||= [ ]

    acc[group] << name

    acc
  end

  Profile.yaml_config.merge! 'skills' => skills
end

Then /^I should see a (\w+) icon$/ do |tag_name|
  page.should have_xpath("//img[@title='#{tag_name}']")
end
