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

describe DocksController do

  # This should return the minimal set of attributes required to create a valid
  # Dock. As you add validations to Dock, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "length" => "1.5" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DocksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all docks as @docks" do
      dock = Dock.create! valid_attributes
      get :index, {}, valid_session
      assigns(:docks).should eq([dock])
    end
  end

  describe "GET show" do
    it "assigns the requested dock as @dock" do
      dock = Dock.create! valid_attributes
      get :show, {:id => dock.to_param}, valid_session
      assigns(:dock).should eq(dock)
    end
  end

  describe "GET new" do
    it "assigns a new dock as @dock" do
      get :new, {}, valid_session
      assigns(:dock).should be_a_new(Dock)
    end
  end

  describe "GET edit" do
    it "assigns the requested dock as @dock" do
      dock = Dock.create! valid_attributes
      get :edit, {:id => dock.to_param}, valid_session
      assigns(:dock).should eq(dock)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dock" do
        expect {
          post :create, {:dock => valid_attributes}, valid_session
        }.to change(Dock, :count).by(1)
      end

      it "assigns a newly created dock as @dock" do
        post :create, {:dock => valid_attributes}, valid_session
        assigns(:dock).should be_a(Dock)
        assigns(:dock).should be_persisted
      end

      it "redirects to the created dock" do
        post :create, {:dock => valid_attributes}, valid_session
        response.should redirect_to(Dock.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dock as @dock" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dock.any_instance.stub(:save).and_return(false)
        post :create, {:dock => { "length" => "invalid value" }}, valid_session
        assigns(:dock).should be_a_new(Dock)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dock.any_instance.stub(:save).and_return(false)
        post :create, {:dock => { "length" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested dock" do
        dock = Dock.create! valid_attributes
        # Assuming there are no other docks in the database, this
        # specifies that the Dock created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Dock.any_instance.should_receive(:update_attributes).with({ "length" => "1.5" })
        put :update, {:id => dock.to_param, :dock => { "length" => "1.5" }}, valid_session
      end

      it "assigns the requested dock as @dock" do
        dock = Dock.create! valid_attributes
        put :update, {:id => dock.to_param, :dock => valid_attributes}, valid_session
        assigns(:dock).should eq(dock)
      end

      it "redirects to the dock" do
        dock = Dock.create! valid_attributes
        put :update, {:id => dock.to_param, :dock => valid_attributes}, valid_session
        response.should redirect_to(dock)
      end
    end

    describe "with invalid params" do
      it "assigns the dock as @dock" do
        dock = Dock.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dock.any_instance.stub(:save).and_return(false)
        put :update, {:id => dock.to_param, :dock => { "length" => "invalid value" }}, valid_session
        assigns(:dock).should eq(dock)
      end

      it "re-renders the 'edit' template" do
        dock = Dock.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dock.any_instance.stub(:save).and_return(false)
        put :update, {:id => dock.to_param, :dock => { "length" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested dock" do
      dock = Dock.create! valid_attributes
      expect {
        delete :destroy, {:id => dock.to_param}, valid_session
      }.to change(Dock, :count).by(-1)
    end

    it "redirects to the docks list" do
      dock = Dock.create! valid_attributes
      delete :destroy, {:id => dock.to_param}, valid_session
      response.should redirect_to(docks_url)
    end
  end

end
