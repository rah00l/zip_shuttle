require 'rails_helper'

RSpec.describe PickupRouteStartTimesController, :type => :controller do


	let(:pickup_route_start_times) { 4.times.map { create(:pickup_route_start_time) } }

	describe '#index' do
		before(:each) { get :index }

		it 'assigns all pickup_route_start_times to @pickup_route_start_times' do
			expect(assigns(:pickup_route_start_times)).to match_array pickup_route_start_times
		end

		it 'success' do
			expect(response).to be_success
		end
	end	

	describe "GET #new" do
	    it "renders new pickup_route_start_times page" do
	      get :new
	      expect(assigns(:pickup_route_start_time)).to be_a_new(PickupRouteStartTime)
	      expect(response).to render_template :new
	    end
  end


 describe "POST #create:" do

    # before(:each){
    #   @pickup_route_start_time = FactoryGirl.create(:pickup_route_start_time)
    #   # sign_in @route
    # }

    let(:pickup_route_start_time) { FactoryGirl.create(:pickup_route_start_time) }

    context "with valid attributes" do

      it "creates a pickup_route_start_time in database" do
      	route = create(:route)
      	expect { post :create, :route_id => route.id, :pickup_route_start_time => attributes_for(:pickup_route_start_time, route_id: route.id) }.to change(PickupRouteStartTime, :count).by(1)
      end

  #     it "and redirects to pickup_route_start_time index page" do
  #       post :create, :pickup_route_start_time => attributes_for(:pickup_route_start_time)
		# expect(response).to redirect_to pickup_route_start_times_path
  #     end


    end

    context "with invalid attributes" do

      it "does not create a pickup_route_start_time in the database" do
	        expect { post :create, :pickup_route_start_time => attributes_for(:pickup_route_start_time, pickup_start_time: nil) }.not_to change(PickupRouteStartTime, :count)
      end

      it "and re-renders new pickup_route_start_time page" do
        post :create, :pickup_route_start_time => attributes_for(:pickup_route_start_time, pickup_start_time: nil)
        expect(response).to render_template :new
      end

    end

	end


	describe "GET #show" do
		it "renders show pickup_route_start_time page" do
			pickup_route_start_time = create(:pickup_route_start_time)
      get :show, id: pickup_route_start_time
			expect(assigns(:pickup_route_start_time)).to eq pickup_route_start_time
			expect(response).to render_template :show
		end
	end

	describe "GET #edit" do
    it "renders edit pickup_route_start_time page" do
      pickup_route_start_time = create(:pickup_route_start_time)
      get :edit, id: pickup_route_start_time
      expect(assigns(:pickup_route_start_time)).to eq pickup_route_start_time
      expect(response).to render_template :edit
    end
  end


  describe "DELETE #destroy" do

    let(:pickup_route_start_time) { FactoryGirl.create(:pickup_route_start_time) }

    it "deletes the pickup_route_start_time from the database" do
      delete :destroy, id: pickup_route_start_time
      expect(PickupRouteStartTime.find_by(id: pickup_route_start_time.id)).to be nil
    end

    it "and redirects to pickup_route_start_time index page" do
      delete :destroy, id: pickup_route_start_time
      expect(response).to redirect_to pickup_route_start_times_path
    end

  end

   describe "PATCH #update:" do

    let(:pickup_route_start_time) { FactoryGirl.create(:pickup_route_start_time) }

    # before(:each){
    #   sign_in board.member
    # }

    context "with valid attributes" do

      it "updates the pickup_route_start_time in the database" do
      	patch :update, id: pickup_route_start_time, :pickup_route_start_time => attributes_for(:pickup_route_start_time, pickup_start_time: Time.now + 2.week.to_i)
        expect(PickupRouteStartTime.find_by(id: pickup_route_start_time.id)).not_to be nil
      end

      it "and redirects to pickup_route_start_time index page" do
        patch :update, id: pickup_route_start_time, :pickup_route_start_time => attributes_for(:pickup_route_start_time, pickup_start_time: Time.now + 2.week.to_i)
        expect(response).to redirect_to pickup_route_start_times_path
      end

    end

    context "with invalid attributes" do

      it "does not update the pickup_route_start_time in the database without pickup_start_time" do
        patch :update, id: pickup_route_start_time, :pickup_route_start_time => attributes_for(:pickup_route_start_time, pickup_start_time: nil)
        expect(PickupRouteStartTime.find_by(id: pickup_route_start_time.id, pickup_start_time: nil)).to be nil
      end

      it "does not update the pickup_route_start_time in the database without route_id" do
        patch :update, id: pickup_route_start_time, :pickup_route_start_time => attributes_for(:pickup_route_start_time, route_id: nil)
        expect(PickupRouteStartTime.find_by(id: pickup_route_start_time.id, route_id: nil)).to be nil
      end

      it "and re-renders edit pickup_route_start_time page" do
        patch :update, id: pickup_route_start_time, :pickup_route_start_time => attributes_for(:pickup_route_start_time, pickup_start_time: nil)
        expect(response).to render_template :edit
      end

    end

  end




end
