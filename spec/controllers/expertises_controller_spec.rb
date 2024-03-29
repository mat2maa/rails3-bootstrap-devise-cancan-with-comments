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

describe ExpertisesController do

  # This should return the minimal set of attributes required to create a valid
  # Expertise. As you add validations to Expertise, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_profile_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExpertisesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all expertises as @expertises" do
      expertise = Expertise.create! valid_attributes
      get :index, {}, valid_session
      assigns(:expertises).should eq([expertise])
    end
  end

  describe "GET show" do
    it "assigns the requested expertise as @expertise" do
      expertise = Expertise.create! valid_attributes
      get :show, {:id => expertise.to_param}, valid_session
      assigns(:expertise).should eq(expertise)
    end
  end

  describe "GET new" do
    it "assigns a new expertise as @expertise" do
      get :new, {}, valid_session
      assigns(:expertise).should be_a_new(Expertise)
    end
  end

  describe "GET edit" do
    it "assigns the requested expertise as @expertise" do
      expertise = Expertise.create! valid_attributes
      get :edit, {:id => expertise.to_param}, valid_session
      assigns(:expertise).should eq(expertise)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Expertise" do
        expect {
          post :create, {:expertise => valid_attributes}, valid_session
        }.to change(Expertise, :count).by(1)
      end

      it "assigns a newly created expertise as @expertise" do
        post :create, {:expertise => valid_attributes}, valid_session
        assigns(:expertise).should be_a(Expertise)
        assigns(:expertise).should be_persisted
      end

      it "redirects to the created expertise" do
        post :create, {:expertise => valid_attributes}, valid_session
        response.should redirect_to(Expertise.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved expertise as @expertise" do
        # Trigger the behavior that occurs when invalid params are submitted
        Expertise.any_instance.stub(:save).and_return(false)
        post :create, {:expertise => { "user_profile_id" => "invalid value" }}, valid_session
        assigns(:expertise).should be_a_new(Expertise)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Expertise.any_instance.stub(:save).and_return(false)
        post :create, {:expertise => { "user_profile_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested expertise" do
        expertise = Expertise.create! valid_attributes
        # Assuming there are no other expertises in the database, this
        # specifies that the Expertise created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Expertise.any_instance.should_receive(:update_attributes).with({ "user_profile_id" => "1" })
        put :update, {:id => expertise.to_param, :expertise => { "user_profile_id" => "1" }}, valid_session
      end

      it "assigns the requested expertise as @expertise" do
        expertise = Expertise.create! valid_attributes
        put :update, {:id => expertise.to_param, :expertise => valid_attributes}, valid_session
        assigns(:expertise).should eq(expertise)
      end

      it "redirects to the expertise" do
        expertise = Expertise.create! valid_attributes
        put :update, {:id => expertise.to_param, :expertise => valid_attributes}, valid_session
        response.should redirect_to(expertise)
      end
    end

    describe "with invalid params" do
      it "assigns the expertise as @expertise" do
        expertise = Expertise.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Expertise.any_instance.stub(:save).and_return(false)
        put :update, {:id => expertise.to_param, :expertise => { "user_profile_id" => "invalid value" }}, valid_session
        assigns(:expertise).should eq(expertise)
      end

      it "re-renders the 'edit' template" do
        expertise = Expertise.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Expertise.any_instance.stub(:save).and_return(false)
        put :update, {:id => expertise.to_param, :expertise => { "user_profile_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested expertise" do
      expertise = Expertise.create! valid_attributes
      expect {
        delete :destroy, {:id => expertise.to_param}, valid_session
      }.to change(Expertise, :count).by(-1)
    end

    it "redirects to the expertises list" do
      expertise = Expertise.create! valid_attributes
      delete :destroy, {:id => expertise.to_param}, valid_session
      response.should redirect_to(expertises_url)
    end
  end

end
