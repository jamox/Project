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

describe StoragesController do

  # This should return the minimal set of attributes required to create a valid
  # Storage. As you add validations to Storage, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "vk" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StoragesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all storages as @storages" do
      storage = Storage.create! valid_attributes
      get :index, {}, valid_session
      assigns(:storages).should eq([storage])
    end
  end

  describe "GET show" do
    it "assigns the requested storage as @storage" do
      storage = Storage.create! valid_attributes
      get :show, {:id => storage.to_param}, valid_session
      assigns(:storage).should eq(storage)
    end
  end

  describe "GET new" do
    it "assigns a new storage as @storage" do
      get :new, {}, valid_session
      assigns(:storage).should be_a_new(Storage)
    end
  end

  describe "GET edit" do
    it "assigns the requested storage as @storage" do
      storage = Storage.create! valid_attributes
      get :edit, {:id => storage.to_param}, valid_session
      assigns(:storage).should eq(storage)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Storage" do
        expect {
          post :create, {:storage => valid_attributes}, valid_session
        }.to change(Storage, :count).by(1)
      end

      it "assigns a newly created storage as @storage" do
        post :create, {:storage => valid_attributes}, valid_session
        assigns(:storage).should be_a(Storage)
        assigns(:storage).should be_persisted
      end

      it "redirects to the created storage" do
        post :create, {:storage => valid_attributes}, valid_session
        response.should redirect_to(Storage.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved storage as @storage" do
        # Trigger the behavior that occurs when invalid params are submitted
        Storage.any_instance.stub(:save).and_return(false)
        post :create, {:storage => { "vk" => "invalid value" }}, valid_session
        assigns(:storage).should be_a_new(Storage)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Storage.any_instance.stub(:save).and_return(false)
        post :create, {:storage => { "vk" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested storage" do
        storage = Storage.create! valid_attributes
        # Assuming there are no other storages in the database, this
        # specifies that the Storage created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Storage.any_instance.should_receive(:update_attributes).with({ "vk" => "MyString" })
        put :update, {:id => storage.to_param, :storage => { "vk" => "MyString" }}, valid_session
      end

      it "assigns the requested storage as @storage" do
        storage = Storage.create! valid_attributes
        put :update, {:id => storage.to_param, :storage => valid_attributes}, valid_session
        assigns(:storage).should eq(storage)
      end

      it "redirects to the storage" do
        storage = Storage.create! valid_attributes
        put :update, {:id => storage.to_param, :storage => valid_attributes}, valid_session
        response.should redirect_to(storage)
      end
    end

    describe "with invalid params" do
      it "assigns the storage as @storage" do
        storage = Storage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Storage.any_instance.stub(:save).and_return(false)
        put :update, {:id => storage.to_param, :storage => { "vk" => "invalid value" }}, valid_session
        assigns(:storage).should eq(storage)
      end

      it "re-renders the 'edit' template" do
        storage = Storage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Storage.any_instance.stub(:save).and_return(false)
        put :update, {:id => storage.to_param, :storage => { "vk" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested storage" do
      storage = Storage.create! valid_attributes
      expect {
        delete :destroy, {:id => storage.to_param}, valid_session
      }.to change(Storage, :count).by(-1)
    end

    it "redirects to the storages list" do
      storage = Storage.create! valid_attributes
      delete :destroy, {:id => storage.to_param}, valid_session
      response.should redirect_to(storages_url)
    end
  end

end
