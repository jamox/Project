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

describe DockyardsController do

  # This should return the minimal set of attributes required to create a valid
  # Dockyard. As you add validations to Dockyard, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DockyardsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all dockyards as @dockyards" do
      dockyard = Dockyard.create! valid_attributes
      get :index, {}, valid_session
      assigns(:dockyards).should eq([dockyard])
    end
  end

  describe "GET show" do
    it "assigns the requested dockyard as @dockyard" do
      dockyard = Dockyard.create! valid_attributes
      get :show, {:id => dockyard.to_param}, valid_session
      assigns(:dockyard).should eq(dockyard)
    end
  end

  describe "GET new" do
    it "assigns a new dockyard as @dockyard" do
      get :new, {}, valid_session
      assigns(:dockyard).should be_a_new(Dockyard)
    end
  end

  describe "GET edit" do
    it "assigns the requested dockyard as @dockyard" do
      dockyard = Dockyard.create! valid_attributes
      get :edit, {:id => dockyard.to_param}, valid_session
      assigns(:dockyard).should eq(dockyard)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Dockyard" do
        expect {
          post :create, {:dockyard => valid_attributes}, valid_session
        }.to change(Dockyard, :count).by(1)
      end

      it "assigns a newly created dockyard as @dockyard" do
        post :create, {:dockyard => valid_attributes}, valid_session
        assigns(:dockyard).should be_a(Dockyard)
        assigns(:dockyard).should be_persisted
      end

      it "redirects to the created dockyard" do
        post :create, {:dockyard => valid_attributes}, valid_session
        response.should redirect_to(Dockyard.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved dockyard as @dockyard" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dockyard.any_instance.stub(:save).and_return(false)
        post :create, {:dockyard => { "name" => "invalid value" }}, valid_session
        assigns(:dockyard).should be_a_new(Dockyard)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Dockyard.any_instance.stub(:save).and_return(false)
        post :create, {:dockyard => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested dockyard" do
        dockyard = Dockyard.create! valid_attributes
        # Assuming there are no other dockyards in the database, this
        # specifies that the Dockyard created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Dockyard.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => dockyard.to_param, :dockyard => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested dockyard as @dockyard" do
        dockyard = Dockyard.create! valid_attributes
        put :update, {:id => dockyard.to_param, :dockyard => valid_attributes}, valid_session
        assigns(:dockyard).should eq(dockyard)
      end

      it "redirects to the dockyard" do
        dockyard = Dockyard.create! valid_attributes
        put :update, {:id => dockyard.to_param, :dockyard => valid_attributes}, valid_session
        response.should redirect_to(dockyard)
      end
    end

    describe "with invalid params" do
      it "assigns the dockyard as @dockyard" do
        dockyard = Dockyard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dockyard.any_instance.stub(:save).and_return(false)
        put :update, {:id => dockyard.to_param, :dockyard => { "name" => "invalid value" }}, valid_session
        assigns(:dockyard).should eq(dockyard)
      end

      it "re-renders the 'edit' template" do
        dockyard = Dockyard.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Dockyard.any_instance.stub(:save).and_return(false)
        put :update, {:id => dockyard.to_param, :dockyard => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested dockyard" do
      dockyard = Dockyard.create! valid_attributes
      expect {
        delete :destroy, {:id => dockyard.to_param}, valid_session
      }.to change(Dockyard, :count).by(-1)
    end

    it "redirects to the dockyards list" do
      dockyard = Dockyard.create! valid_attributes
      delete :destroy, {:id => dockyard.to_param}, valid_session
      response.should redirect_to(dockyards_url)
    end
  end

end