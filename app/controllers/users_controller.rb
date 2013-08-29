class UsersController < ApplicationController

  include ActiveModel::Dirty

  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Немате админитраторски привилегии.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_profile = UserProfile.where(:user_id => params[:id]).first
  end

  def update
    authorize! :update, @user, :message => 'Немате админитраторски привилегии.'
    @user = User.find(params[:id])

    @old_name = @user.roles.first.name

    @user.assign_attributes(params[:user], :as => :admin)

    @new_name = @user.roles.first.name

    if @user.save
      if @old_name == '' && @old_name != @new_name
        UserMailer.activation_email(@user).deliver
      end
      redirect_to users_path, :notice => "Корисникот е ажуриран."
    else
      redirect_to users_path, :alert => "Неможе да се ажурира."
    end
  end

  def destroy
    authorize! :destroy, @user, :message => 'Немате админитраторски привилегии.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "Корисникот е избришан."
    else
      redirect_to users_path, :notice => "Не може да се избрише."
    end
  end
end