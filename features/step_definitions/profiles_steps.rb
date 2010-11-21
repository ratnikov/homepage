Then /^I should see my (\w+)$/ do |attribute|
  profile = Profile.new

  case attribute
  when 'gravatar'
    Then %{I should see "#{profile.email}" gravatar}
  else
    Then %{I should see "#{profile.read_attribute(attribute)}"}
  end
end

Then /^I should see my (\w+) link$/ do |link|
  profile = Profile.new

  Then %{I should see a link to "#{profile.read_attribute(link)}"}
end
