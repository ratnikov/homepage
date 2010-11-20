require 'digest/md5'

module Gravatar
  extend self
  
  def url(email)
    "http://www.gravatar.com/avatar/%s" % [ Digest::MD5.hexdigest(email.downcase) ]
  end
end
