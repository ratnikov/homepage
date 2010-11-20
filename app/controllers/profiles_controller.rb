class ProfilesController < ApplicationController
  def show
    @profile = Profile.new
  end
end
