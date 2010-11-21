module ProjectsHelper
  def project_name(project)
    label = h project.name

    unless (url = project.url).blank?
      url =~ /^http/ ? link_to(label, url) : link_to(label, "http://#{url}")
    else
      label
    end
  end

  def li_tag(tag)
    content_tag :li, h(tag), :class => tag.gsub(/\W+/, '-')
  end
end
