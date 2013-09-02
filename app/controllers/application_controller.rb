class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_facebook

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def get_facebook
    @graph = Koala::Facebook::API.new(ENV['FACEBOOK_ACCESS_TOKEN'])
    @posts = @graph.get_connections('me', 'feed')
  end

end
