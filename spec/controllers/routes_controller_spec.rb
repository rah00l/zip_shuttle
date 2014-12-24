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

    context "with valid attributes" do

      it "creates a board in the database" do
        # post :create, :board => attributes_for(:board)
        # expect(Board.find_by(name: "Food Board")).not_to be nil
        expect { post :create, :board => attributes_for(:route) }.to change(Route, :count).by(1)
      end

      # it "and redirects to dashboard page" do
      #   post :create, :board => attributes_for(:board)
      #   expect(response).to redirect_to dashboard_path(@member.membername)
      # end

      it "and redirects to routes index page" do
        # course = create(:course) #if you use Factories
        # post :create, section: attributes_for(:section)
        # expect(response).to redirect_to course_section_path(course_id: course.id, id: section.id)

        route = create(:route)
		post :create, :route => attributes_for(:route)
        expect(response).to redirect_to route_path(route)
      end

    end

    # context "with invalid attributes" do

    #   it "does not create a board in the database" do
    #     expect { post :create, :board => attributes_for(:board, category: nil) }.not_to change(Board, :count)
    #   end

    #   it "and re-renders new board page" do
    #     post :create, :board => attributes_for(:board, category: nil)
    #     expect(response).to render_template :new
    #   end

    # end

  end

end
