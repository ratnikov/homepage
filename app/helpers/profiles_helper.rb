module ProfilesHelper
  def gravatar_tag(email)
    image_tag Gravatar.url(email), :alt => 'Gravatar image'
  end
end
