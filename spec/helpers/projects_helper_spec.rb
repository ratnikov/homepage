require 'spec_helper'

describe ProjectsHelper do
  describe "#project_name" do
    it "should return link to project if project has an url" do
      project_name(Project.new(:name => 'foobar', :url => 'http://foobar.com')).should ==
        link_to('foobar', 'http://foobar.com')
    end

    it "should return just the name if no url available" do
      project_name(Project.new(:name => 'foobar')).should == 'foobar'
    end

    it "should strip html junk" do
      project_name(Project.new(:name => '<script>foo</script>')).should_not =~ /<script>/
    end
  end
end
