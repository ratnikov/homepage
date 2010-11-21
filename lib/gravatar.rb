require 'digest/md5'

module Gravatar
  extend self
  
  def url(email, options = nil)
    size = options && options[:size] || 80
    "http://www.gravatar.com/avatar/%s?size=%s" % [ Digest::MD5.hexdigest(email.downcase), size ]
  end
end
