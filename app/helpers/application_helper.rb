module ApplicationHelper
  def profile
    @profile ||= Profile.new
  end
end
