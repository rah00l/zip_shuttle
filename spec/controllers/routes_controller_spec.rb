require 'rails_helper'

RSpec.describe RoutesController, :type => :controller do

	describe "GET #new" do
    it "renders new routes page" do
      get :new
      expect(assigns(:route)).to be_a_new(Route)
      expect(response).to render_template :new
    end
  end

  describe "POST #create:" do

    before(:each){
      @route = FactoryGirl.create(:route)
      # sign_in @route
    }

 #    context "with valid attributes" do

 #      it "creates a route in the database" do
 #        # expect { post :create, :route => attributes_for(:route) }.to change(Route, :count).by(1)
 #        route = create(:route)
 #        post :create, route: attributes_for(:route)
 #        debugger
 #        expect(response).to change(Route, :count).by(1)
 #      end

 #      # it "and redirects to dashboard page" do
 #      #   post :create, :board => attributes_for(:board)
 #      #   expect(response).to redirect_to dashboard_path(@member.membername)
 #      # end

 #    end

 #    # context "with invalid attributes" do

 #    #   it "does not create a board in the database" do
 #    #     expect { post :create, :board => attributes_for(:board, category: nil) }.not_to change(Board, :count)
 #    #   end

 #    #   it "and re-renders new board page" do
 #    #     post :create, :board => attributes_for(:board, category: nil)
 #    #     expect(response).to render_template :new
 #    #   end

 #    # end

	end


	describe "GET #show" do
		it "renders show route page" do
			route = create(:route)
      get :show, id: route
			expect(assigns(:route)).to eq route
			expect(response).to render_template :show
		end
	end

	describe "GET #edit" do
    it "renders edit route page" do
      route = create(:route)
      get :edit, id: route
      expect(assigns(:route)).to eq route
      expect(response).to render_template :edit
    end
  end

  describe "DELETE #destroy" do

    let(:route) { FactoryGirl.create(:route) }

    # before(:each){
    #   sign_in board.member
    # }


    it "deletes the route from the database" do
      delete :destroy, id: route
      expect(Route.find_by(name: route.name)).to be nil
    end

    it "and redirects to route index page" do
      delete :destroy, id: route
      expect(response).to redirect_to routes_path
    end

  end

### ------------------------------- Theere is issue (ActiveModel::ForbiddenAttributesError:)with PATCH and POST methods ---------------#
  # describe "PATCH #update:" do

  #   let(:route) { FactoryGirl.create(:route) }

  #   # before(:each){
  #   #   sign_in board.member
  #   # }

  #   context "with valid attributes" do

  #     it "updates the route in the database" do
  #       patch :update, id: route, :route => attributes_for(:route)
  #       expect(Route.find_by(name: route.name)).not_to be nil
  #     end

  #     it "and redirects to dashboard page" do
  #       patch :update, id: route, :board => attributes_for(:route)
  #       expect(response).to redirect_to route_path(route)
  #     end

  #   end

  #   # context "with invalid attributes" do

  #   #   it "does not update the board in the database" do
  #   #     patch :update, id: board, :board => attributes_for(:board, category: nil)
  #   #     expect(Board.find_by(name: board.name, category: nil)).to be nil
  #   #   end

  #   #   it "and re-renders edit board page" do
  #   #     patch :update, id: board, :board => attributes_for(:board, category: nil)
  #   #     expect(response).to render_template :edit
  #   #   end

  #   # end

  # end

  #   context "with valid attributes" do

  # #     it "creates a route in the database" do
  # #     	debugger
		# # expect{ post :create, route: FactoryGirl.attributes_for(:route) }.to change(Route,:count).by(1) 
  # #      end

  #     # it "and redirects to dashboard page" do
  #     #   post :create, :board => attributes_for(:board)
  #     #   expect(response).to redirect_to dashboard_path(@member.membername)
  #     # end

  #     # it "and redirects to routes index page" do
  #     #   post :create, :route => attributes_for(:route)
  #     #   # expect(response).to redirect_to routes_path
  #     # end

  #   end

    # context "with invalid attributes" do

    #   it "does not create a board in the database" do
    #     expect { post :create, :board => attributes_for(:board, category: nil) }.not_to change(Board, :count)
    #   end

    #   it "and re-renders new board page" do
    #     post :create, :board => attributes_for(:board, category: nil)
    #     expect(response).to render_template :new
    #   end

    # end

  # end

end
