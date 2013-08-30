class HomeController < ApplicationController

  def index

    @users = User.all

    @user_profile = current_user.user_profile if current_user.present?

    @news_posts = NewsPost.order('created_at DESC').limit(3)
    @news_post_count = @news_posts.count

    @json = UserProfile.all.to_gmaps4rails do |user_profile, marker|
      marker.picture({
                         :picture => user_profile.logo_url(:marker).to_s,
                         :width   => 43,
                         :height  => 63,
                         :shadow_picture => '/assets/gmaps4rails/marker_shadow.png',
                         :shadow_width   => 100,
                         :shadow_height  => 65
                     })
      marker.json(
          {
              :user_id => user_profile.user_id,
              :name => user_profile.name
          }
      )
      marker.infowindow render_to_string :partial => '/user_profiles/marker', :locals => { :object => user_profile }
    end

  end

end
