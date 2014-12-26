require 'rails_helper'

RSpec.describe LocationsController, :type => :controller do

# let(:locations_list) { 4.times.map { create(:location) } }

	let(:route) { FactoryGirl.create(:route) }
    let(:locations_list) { 4.times.map { FactoryGirl.create(:location, route_id: route.id) }  }

   describe '#index' do
    before(:each) { get :index }

    it 'assigns all locations to @locations' do
      # debugger
      expect(assigns(:locations)).to match_array locations_list
    end

    it 'success' do
      expect(response).to be_success
    end
  end


describe "GET #new" do
    it "renders new Location page" do
      route = create(:route)
      # sign_in member
      get :new, route_id: route.id
      expect(assigns(:location)).to be_a_new(Location)
      expect(response).to render_template :new
    end
  end

  describe "GET #show" do
    it "renders show location page" do
      route = create(:route)
      location = create(:location, route_id: route.id)
      # sign_in member
      get :show, id: location
      expect(assigns(:location)).to eq location
      expect(response).to render_template :show
    end
  end

  describe "GET #edit" do

    it "renders edit location page" do
      route = create(:route)
      location = create(:location, route_id: route.id)
       # sign_in member
      get :edit, id: location
      expect(assigns(:location)).to eq location
      expect(response).to render_template :edit
    end
  end

  describe "DELETE #destroy" do

    let(:route) { FactoryGirl.create(:route) }
    let(:location) { FactoryGirl.create(:location, route_id: route.id) }

    # before(:each){
    #   sign_in pin.board.member
    # }

    it "deletes the location from the database" do
      delete :destroy, id: location
      expect(Location.find_by(id: location.id)).to be nil
    end

    it "and redirects to location index page" do
      delete :destroy, id: location
      expect(response).to redirect_to locations_path
    end

  end

### ----Some issue ----

describe "POST #create:" do

    context "with valid attributes" do

      it "creates a location in the database" do
        route = create(:route)
        # member = board.member
        # sign_in member
        expect { post :create, :route_id => route.id, :location => attributes_for(:location, route_id: route.id) }.to change(Location, :count).by(1)
      end

      it "and redirects to index location page" do
		# debugger
        route = create(:route)
        # member = board.member
        # sign_in member
        post :create, :route_id => route.id, :location => attributes_for(:location, route_id: route.id)
        expect(response).to redirect_to location_path(assigns[:location])
      end

    end

    context "with invalid attributes" do

      it "does not create a location in the database" do
        route = create(:route)
        # member = board.member
        # sign_in member
        expect { post :create, :route_id => route.id, :location => attributes_for(:location, route_id: nil) }.not_to change(Location, :count)
      end

      it "and re-renders new location page" do
        route = create(:route)
        # member = board.member
        # sign_in member
        post :create, :route_id => route.id, :location => attributes_for(:location, route_id: nil)
        expect(response).to render_template :new
      end

    end

  end


  describe "PATCH #update:" do

    let(:route) { FactoryGirl.create(:route) }
    let(:location) { FactoryGirl.create(:location, route_id: route.id) }

    # before(:each){
    #   sign_in pin.board.member
    # }

    context "with valid attributes" do

      it "updates the location in the database" do
        patch :update, id: location, :location => attributes_for(:location, route_type: "Medium")
        expect(Location.find_by(id: location.id)).not_to be nil
      end

      it "and redirects to show pin page" do
        patch :update, id: location, :location => attributes_for(:location, route_type: "Medium")
        expect(response).to redirect_to location_path(location)

      end

    end

    context "with invalid attributes" do

      it "does not update the location in the database" do
        patch :update, id: location, :location => attributes_for(:location, name: nil)
        expect(Location.find_by(id: location.id, name: nil)).to be nil
      end

      it "and re-renders edit location page" do
        patch :update, id: location, :location => attributes_for(:location, name: nil)
        expect(response).to render_template :edit
      end

    end

  end



end
