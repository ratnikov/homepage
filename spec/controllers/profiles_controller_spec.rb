require 'spec_helper'

describe ProfilesController do
  describe "GET /show" do
    before { get :show }

    it { should render_template("show") }
    it { assigns('profile').should_not be_blank }
  end
end
