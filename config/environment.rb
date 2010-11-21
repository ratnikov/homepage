# Load the rails application
require File.expand_path('../application', __FILE__)

ActiveYaml::Base.set_root_path File.join(Rails.root, 'db')

# Initialize the rails application
Homepage::Application.initialize!
