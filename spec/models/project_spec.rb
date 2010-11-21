require 'spec_helper'

describe Project do
  it "should have required method" do
    @project = Project.new

    @project.name.should == nil
    @project.description.should == nil
    @project.url.should == nil
  end
end
