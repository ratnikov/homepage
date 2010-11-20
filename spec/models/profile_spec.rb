require 'spec_helper'

describe Profile do
  it "should load config from profile.yml" do
    Profile.new.attributes.should == YAML.load_file(File.join(Rails.root, "config", "profile.yml"))
  end

  describe "profile instance" do
    before do
      @profile = Profile.new

      stub( @profile ).attributes.returns 'foo' => 'bar'
    end

    it "should allow access to attributes" do
      @profile.foo.should == 'bar'
    end

    it "should recognize symbols as attribute names" do
      @profile.attribute?(:foo).should be_true
      @profile.read_attribute(:foo).should == 'bar'
    end
  end
end
