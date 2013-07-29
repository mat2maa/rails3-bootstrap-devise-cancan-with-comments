class HomeController < ApplicationController
  def index
    @users = User.all
    @json = UserProfile.all.to_gmaps4rails do |user_profile, marker|
      marker.json(
          {
              user_id: user_profile.user_id,
              name: user_profile.name
          }
      )
      marker.infowindow render_to_string partial: '/user_profiles/marker', locals: { object: user_profile }
    end
  end
end
