require 'rails_helper'

RSpec.describe RoutesController, :type => :controller do

  let(:routes_list) { 4.times.map { create(:route) } }

  before(:each){
      @user = FactoryGirl.create(:user)
      # sign_in @user
    }

  describe '#index' do
    before(:each) { get :index }

    it 'assigns all routes to @routes' do
      expect(assigns(:routes)).to match_array routes_list
    end

    it 'success' do
      expect(response).to be_success
    end
  end


	describe "GET #new" do

    before(:each){
      @user = FactoryGirl.create(:user)
      sign_in @user
    }

    it "renders new routes page" do
      get :new
      expect(assigns(:route)).to be_a_new(Route)
      expect(response).to render_template :new
    end
  end

  describe "POST #create:" do

    before(:each){
      @user = FactoryGirl.create(:user)
      sign_in @user
    }

    context "with valid attributes" do

      it "creates a route in database" do
        expect { post :create, :route => attributes_for(:route) }.to change(Route, :count).by(1)
      end

      it "and redirects to route index page" do
        post :create, :route => attributes_for(:route)
        expect(response).to redirect_to route_path(assigns[:route])
      end

    end

    context "with invalid attributes" do

      it "does not create a route in the database" do
        expect { post :create, :route => attributes_for(:route, name: nil) }.not_to change(Route, :count)
      end

      it "and re-renders new route page" do
        post :create, :route => attributes_for(:route, name: nil)
        expect(response).to render_template :new
      end

    end

	end


	describe "GET #show" do
    before(:each){
      @user = FactoryGirl.create(:user)
      sign_in @user
    }
		it "renders show route page" do
			route = create(:route)
      get :show, id: route
			expect(assigns(:route)).to eq route
			expect(response).to render_template :show
		end
	end

	describe "GET #edit" do
    before(:each){
      @user = FactoryGirl.create(:user)
      sign_in @user
    }
    it "renders edit route page" do
      route = create(:route)
      get :edit, id: route
      expect(assigns(:route)).to eq route
      expect(response).to render_template :edit
    end
  end

  describe "DELETE #destroy" do

    let(:route) { FactoryGirl.create(:route) }

    before(:each){
      @user = FactoryGirl.create(:user)
      sign_in @user
    }


    it "deletes the route from the database" do
      delete :destroy, id: route
      expect(Route.find_by(name: route.name)).to be nil
    end

    it "and redirects to route index page" do
      delete :destroy, id: route
      expect(response).to redirect_to routes_path
    end

  end


  describe "PATCH #update:" do

    let(:route) { FactoryGirl.create(:route) }

    before(:each){
      @user = FactoryGirl.create(:user)
      sign_in @user
    }

    context "with valid attributes" do

      it "updates the route in the database" do
        patch :update, id: route, :route => attributes_for(:route, name: "Fashion")
        expect(Route.find_by(name: route.name, name: "Fashion")).not_to be nil
      end

      it "and redirects to route show page" do
        patch :update, id: route, :route => attributes_for(:route, name: "Fashion")
        expect(response).to redirect_to route_path(route)
      end

    end

    context "with invalid attributes" do

      it "does not update the route in the database" do
        patch :update, id: route, :route => attributes_for(:route, name: nil)
        expect(Route.find_by(id: route.id, name: nil)).to be nil
      end

      it "and re-renders edit board page" do
        patch :update, id: route, :route => attributes_for(:route, name: nil)
        expect(response).to render_template :edit
      end

    end

  end

end
