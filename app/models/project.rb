class Project < ActiveYaml::Base
  fields :name, :description, :url, :tag_list

  def tags
    tag_list.blank? ? [] : tag_list.split(/\s*,\s*/)
  end
end
