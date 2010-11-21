require 'spec_helper'

describe ProfilesHelper do
  describe "#web_link" do
    it "should render a regular link" do
      web_link("http://example.com/foo/bar").should == link_to("example.com", "http://example.com/foo/bar")
    end

    it "should recognize github link" do
      web_link("http://github.com/user").should == link_to("GitHub", "http://github.com/user", :class => 'github')
    end

    it "should recognize twitter link" do
      web_link("http://twitter.com/user").should == link_to("Twitter", "http://twitter.com/user", :class => 'twitter')
    end

    it "should just plug stuff in if not recognized" do
      web_link("foobar").should == link_to("foobar", "foobar")
    end
  end
end
