require 'yaml'

Profile.yaml_config = YAML.load_file(File.join(Rails.root, 'config', 'profile.yml'))
