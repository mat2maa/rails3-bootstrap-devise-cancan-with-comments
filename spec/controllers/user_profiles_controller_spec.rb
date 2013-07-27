require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UserProfilesController do

  # This should return the minimal set of attributes required to create a valid
  # UserProfile. As you add validations to UserProfile, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserProfilesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all user_profiles as @user_profiles" do
      user_profile = UserProfile.create! valid_attributes
      get :index, {}, valid_session
      assigns(:user_profiles).should eq([user_profile])
    end
  end

  describe "GET show" do
    it "assigns the requested user_profile as @user_profile" do
      user_profile = UserProfile.create! valid_attributes
      get :show, {:id => user_profile.to_param}, valid_session
      assigns(:user_profile).should eq(user_profile)
    end
  end

  describe "GET new" do
    it "assigns a new user_profile as @user_profile" do
      get :new, {}, valid_session
      assigns(:user_profile).should be_a_new(UserProfile)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_profile as @user_profile" do
      user_profile = UserProfile.create! valid_attributes
      get :edit, {:id => user_profile.to_param}, valid_session
      assigns(:user_profile).should eq(user_profile)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UserProfile" do
        expect {
          post :create, {:user_profile => valid_attributes}, valid_session
        }.to change(UserProfile, :count).by(1)
      end

      it "assigns a newly created user_profile as @user_profile" do
        post :create, {:user_profile => valid_attributes}, valid_session
        assigns(:user_profile).should be_a(UserProfile)
        assigns(:user_profile).should be_persisted
      end

      it "redirects to the created user_profile" do
        post :create, {:user_profile => valid_attributes}, valid_session
        response.should redirect_to(UserProfile.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_profile as @user_profile" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserProfile.any_instance.stub(:save).and_return(false)
        post :create, {:user_profile => { "user_id" => "invalid value" }}, valid_session
        assigns(:user_profile).should be_a_new(UserProfile)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserProfile.any_instance.stub(:save).and_return(false)
        post :create, {:user_profile => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user_profile" do
        user_profile = UserProfile.create! valid_attributes
        # Assuming there are no other user_profiles in the database, this
        # specifies that the UserProfile created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UserProfile.any_instance.should_receive(:update_attributes).with({ "user_id" => "1" })
        put :update, {:id => user_profile.to_param, :user_profile => { "user_id" => "1" }}, valid_session
      end

      it "assigns the requested user_profile as @user_profile" do
        user_profile = UserProfile.create! valid_attributes
        put :update, {:id => user_profile.to_param, :user_profile => valid_attributes}, valid_session
        assigns(:user_profile).should eq(user_profile)
      end

      it "redirects to the user_profile" do
        user_profile = UserProfile.create! valid_attributes
        put :update, {:id => user_profile.to_param, :user_profile => valid_attributes}, valid_session
        response.should redirect_to(user_profile)
      end
    end

    describe "with invalid params" do
      it "assigns the user_profile as @user_profile" do
        user_profile = UserProfile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserProfile.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_profile.to_param, :user_profile => { "user_id" => "invalid value" }}, valid_session
        assigns(:user_profile).should eq(user_profile)
      end

      it "re-renders the 'edit' template" do
        user_profile = UserProfile.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserProfile.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_profile.to_param, :user_profile => { "user_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user_profile" do
      user_profile = UserProfile.create! valid_attributes
      expect {
        delete :destroy, {:id => user_profile.to_param}, valid_session
      }.to change(UserProfile, :count).by(-1)
    end

    it "redirects to the user_profiles list" do
      user_profile = UserProfile.create! valid_attributes
      delete :destroy, {:id => user_profile.to_param}, valid_session
      response.should redirect_to(user_profiles_url)
    end
  end

end
