module ProfilesHelper
  def gravatar_tag(email, options = nil)
    size = options && options[:size]
    image_tag ::Gravatar.url(email, :size => size), :alt => 'Gravatar image'
  end
end
