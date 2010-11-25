require 'spec_helper'

describe Profile do
  before { @profile = Profile.new }

  it "should load config from profile.yml" do
    Profile.new.attributes.should == YAML.load_file(File.join(Rails.root, "config", "profile.yml"))
  end

  describe "profile instance" do
    before { stub( @profile ).attributes.returns 'foo' => 'bar' }

    it "should allow access to attributes" do
      @profile.foo.should == 'bar'
    end

    it "should recognize symbols as attribute names" do
      @profile.attribute?(:foo).should be_true
      @profile.read_attribute(:foo).should == 'bar'
    end
  end

  describe "#skills" do
    it "should return the specified skills" do
      stub( @profile ).attributes.returns 'skills' => [ 'foo', 'bar' ]

      @profile.skills.should == [ 'foo', 'bar' ]
    end

    it "should allow single skill" do
      stub( @profile ).attributes.returns 'skills' => 'foo'

      @profile.skills.should == [ 'foo' ]
    end

    it "should return [] if no skills are specified" do
      stub( @profile ).attributes.returns 'foo' => 'bar'

      @profile.skills.should == [ ]
    end
  end
end
