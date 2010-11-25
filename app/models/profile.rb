class Profile
  YAML_PATH = File.join(Rails.root, 'config', 'profile.yml').freeze
  class << self
    def yaml_config
      @yaml_config ||= YAML.load_file(YAML_PATH)
      @yaml_config
    end
  end

  attr_reader :attributes

  def initialize
    @attributes = Profile.yaml_config.dup
  end

  def attribute?(name)
    attributes.include?(name.to_s)
  end

  def read_attribute(attribute)
    attributes[attribute.to_s]
  end

  def skills
    attribute?(:skills) ? Array.wrap(read_attribute(:skills)) : []
  end

  private

  def method_missing(attribute)
    return read_attribute(attribute) if attribute?(attribute)

    super
  end
end
