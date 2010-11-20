class Profile
  class << self
    attr_accessor :yaml_config
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

  private

  def method_missing(attribute)
    return read_attribute(attribute) if attribute?(attribute)

    super
  end
end
