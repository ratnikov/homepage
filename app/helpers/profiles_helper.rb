module ProfilesHelper
  def gravatar_tag(email, options = nil)
    size = options && options[:size]
    image_tag ::Gravatar.url(email, :size => size), :alt => 'Gravatar image'
  end

  def web_link(url)
    case url
    when /github.com\/([^\/]+)/ then link_to('GitHub', url, :class => 'github')
    when /twitter.com\/([^\/]+)/ then link_to('Twitter', url, :class => 'twitter')
    when %r{^http://([^/]+)/} then link_to($1, url)
    else
      link_to url, url
    end
  end
end
