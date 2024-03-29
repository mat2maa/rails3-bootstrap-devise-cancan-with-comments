class UserProfilesController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  # GET /user_profiles
  # GET /user_profiles.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @user_profiles }
    end
  end

  # GET /user_profiles/1
  # GET /user_profiles/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @user_profile }
    end
  end

  # GET /user_profiles/1/edit
  def edit
  end

  # POST /user_profiles
  # POST /user_profiles.json
  def create
    respond_to do |format|
      if @user_profile.save
        format.html { redirect_to @user_profile, :notice => 'Корисничкиот профил е успешно создаден.' }
        format.json { render :json => @user_profile, :status => :created, :location => @user_profile }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /user_profiles/1
  # PUT /user_profiles/1.json
  def update
    respond_to do |format|
      if @user_profile.update_attributes(params[:user_profile])
        format.html { redirect_to home_index_url, :notice => 'Корисничкиот профил е успешно ажуриран.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @user_profile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /user_profiles/1
  # DELETE /user_profiles/1.json
  def destroy
    @user_profile.destroy

    respond_to do |format|
      format.html { redirect_to user_profiles_url }
      format.json { head :no_content }
    end
  end
end
