require 'spec_helper'

describe ProfilesController do
  describe "GET /show" do
    before { get :show }

    it { should render_template("show") }
  end
end
