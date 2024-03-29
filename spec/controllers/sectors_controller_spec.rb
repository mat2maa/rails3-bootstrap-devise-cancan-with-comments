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

describe SectorsController do

  # This should return the minimal set of attributes required to create a valid
  # Sector. As you add validations to Sector, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user_profile_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SectorsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all sectors as @sectors" do
      sector = Sector.create! valid_attributes
      get :index, {}, valid_session
      assigns(:sectors).should eq([sector])
    end
  end

  describe "GET show" do
    it "assigns the requested sector as @sector" do
      sector = Sector.create! valid_attributes
      get :show, {:id => sector.to_param}, valid_session
      assigns(:sector).should eq(sector)
    end
  end

  describe "GET new" do
    it "assigns a new sector as @sector" do
      get :new, {}, valid_session
      assigns(:sector).should be_a_new(Sector)
    end
  end

  describe "GET edit" do
    it "assigns the requested sector as @sector" do
      sector = Sector.create! valid_attributes
      get :edit, {:id => sector.to_param}, valid_session
      assigns(:sector).should eq(sector)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Sector" do
        expect {
          post :create, {:sector => valid_attributes}, valid_session
        }.to change(Sector, :count).by(1)
      end

      it "assigns a newly created sector as @sector" do
        post :create, {:sector => valid_attributes}, valid_session
        assigns(:sector).should be_a(Sector)
        assigns(:sector).should be_persisted
      end

      it "redirects to the created sector" do
        post :create, {:sector => valid_attributes}, valid_session
        response.should redirect_to(Sector.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved sector as @sector" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sector.any_instance.stub(:save).and_return(false)
        post :create, {:sector => { "user_profile_id" => "invalid value" }}, valid_session
        assigns(:sector).should be_a_new(Sector)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Sector.any_instance.stub(:save).and_return(false)
        post :create, {:sector => { "user_profile_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested sector" do
        sector = Sector.create! valid_attributes
        # Assuming there are no other sectors in the database, this
        # specifies that the Sector created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Sector.any_instance.should_receive(:update_attributes).with({ "user_profile_id" => "1" })
        put :update, {:id => sector.to_param, :sector => { "user_profile_id" => "1" }}, valid_session
      end

      it "assigns the requested sector as @sector" do
        sector = Sector.create! valid_attributes
        put :update, {:id => sector.to_param, :sector => valid_attributes}, valid_session
        assigns(:sector).should eq(sector)
      end

      it "redirects to the sector" do
        sector = Sector.create! valid_attributes
        put :update, {:id => sector.to_param, :sector => valid_attributes}, valid_session
        response.should redirect_to(sector)
      end
    end

    describe "with invalid params" do
      it "assigns the sector as @sector" do
        sector = Sector.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sector.any_instance.stub(:save).and_return(false)
        put :update, {:id => sector.to_param, :sector => { "user_profile_id" => "invalid value" }}, valid_session
        assigns(:sector).should eq(sector)
      end

      it "re-renders the 'edit' template" do
        sector = Sector.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Sector.any_instance.stub(:save).and_return(false)
        put :update, {:id => sector.to_param, :sector => { "user_profile_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested sector" do
      sector = Sector.create! valid_attributes
      expect {
        delete :destroy, {:id => sector.to_param}, valid_session
      }.to change(Sector, :count).by(-1)
    end

    it "redirects to the sectors list" do
      sector = Sector.create! valid_attributes
      delete :destroy, {:id => sector.to_param}, valid_session
      response.should redirect_to(sectors_url)
    end
  end

end
