require 'spec_helper'

describe Project do
  it "should have required method" do
    @project = Project.new

    @project.name.should == nil
    @project.description.should == nil
    @project.url.should == nil
  end

  describe "#tags" do
    it "should return the tag list as separated words" do
      project = Project.new :tag_list => 'foo ,   bar,beta;zeta'

      project.tags.should == [ 'foo', 'bar', 'beta;zeta' ]
    end

    it "should return [] if no tags were specified" do
      Project.new.tags.should == []
    end
  end
end
