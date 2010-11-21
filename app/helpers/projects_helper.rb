module ProjectsHelper
  def project_name(project)
    label = h project.name

    unless (url = project.url).blank?
      url =~ /^http/ ? link_to(label, url) : link_to(label, "http://#{url}")
    else
      label
    end
  end

  def tag_icon(tag)
    icon_path = "/images/#{tag.dasherize}-icon.png"
    if File.exists? File.join(Rails.root, 'public', icon_path)
      image_tag icon_path
    else
      content_tag :span, h(tag)
    end
  end
end
