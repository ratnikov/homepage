module ProjectsHelper
  def project_name(project)
    label = h project.name
    project.url.blank? ? label : link_to(label, project.url)
  end

  def li_tag(tag)
    content_tag :li, h(tag), :class => tag.gsub(/\W+/, '-')
  end
end
