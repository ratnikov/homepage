module ProjectsHelper
  def project_name(project)
    label = h project.name
    project.url.blank? ? label : link_to(label, project.url)
  end
end
