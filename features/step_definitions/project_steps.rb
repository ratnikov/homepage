Given /^there are following projects:$/ do |table|
  stub( Project ).raw_data.returns table.hashes

  Project.reload(true)
end
