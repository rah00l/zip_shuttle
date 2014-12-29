require 'rails_helper'

RSpec.describe DropRouteStartTimesController, :type => :controller do

	let(:drop_route_start_times) { 4.times.map { create(:drop_route_start_time) } }

	describe '#index' do
		before(:each) { get :index }

		it 'assigns all drop_route_start_times to @drop_route_start_times' do
			expect(assigns(:drop_route_start_times)).to match_array drop_route_start_times
		end

		it 'success' do
			expect(response).to be_success
		end
	end	

	describe "GET #new" do
	    it "renders new drop_route_start_times page" do
	      get :new
	      expect(assigns(:drop_route_start_time)).to be_a_new(DropRouteStartTime)
	      expect(response).to render_template :new
	    end
  	end



  	describe "POST #create:" do

    # before(:each){
    #   @pickup_route_start_time = FactoryGirl.create(:pickup_route_start_time)
    #   # sign_in @route
    # }

    let(:drop_route_start_time) { FactoryGirl.create(:drop_route_start_time) }

    context "with valid attributes" do

      it "creates a drop_route_start_time in database" do
      	route = create(:route)
      	expect { post :create, :route_id => route.id, :drop_route_start_time => attributes_for(:drop_route_start_time, route_id: route.id) }.to change(DropRouteStartTime, :count).by(1)
      end

  #     it "and redirects to drop_route_start_time index page" do
  #       post :create, :drop_route_start_time => attributes_for(:drop_route_start_time)
		# expect(response).to redirect_to drop_route_start_times_path
  #     end


    end

    context "with invalid attributes" do

      it "does not create a drop_route_start_time in the database" do
	       expect { post :create, :drop_route_start_time => attributes_for(:drop_route_start_time, drop_start_time: nil) }.not_to change(DropRouteStartTime, :count)
      end

      it "and re-renders new pickup_route_start_time page" do
        post :create, :drop_route_start_time => attributes_for(:drop_route_start_time, route_id: nil)
        expect(response).to render_template :new
      end

    end

	end

	
	describe "GET #show" do
		it "renders show drop_route_start_time page" do
			drop_route_start_time = create(:drop_route_start_time)
      		get :show, id: drop_route_start_time
			expect(assigns(:drop_route_start_time)).to eq drop_route_start_time
			expect(response).to render_template :show
		end
	end

	describe "GET #edit" do
    it "renders edit drop_route_start_time page" do
      drop_route_start_time = create(:drop_route_start_time)
      get :edit, id: drop_route_start_time
      expect(assigns(:drop_route_start_time)).to eq drop_route_start_time
      expect(response).to render_template :edit
    end
  end


  describe "DELETE #destroy" do

    let(:drop_route_start_time) { FactoryGirl.create(:drop_route_start_time) }

    it "deletes the drop_route_start_time from the database" do
      delete :destroy, id: drop_route_start_time
      expect(DropRouteStartTime.find_by(id: drop_route_start_time.id)).to be nil
    end

    it "and redirects to drop_route_start_time index page" do
      delete :destroy, id: drop_route_start_time
      expect(response).to redirect_to drop_route_start_times_path
    end

  end


  describe "PATCH #update:" do

    let(:drop_route_start_time) { FactoryGirl.create(:drop_route_start_time) }

    # before(:each){
    #   sign_in board.member
    # }

    context "with valid attributes" do

      it "updates the drop_route_start_time in the database" do
      	patch :update, id: drop_route_start_time, :drop_route_start_time => attributes_for(:drop_route_start_time, drop_start_time: Time.now + 2.week.to_i)
        expect(DropRouteStartTime.find_by(id: drop_route_start_time.id)).not_to be nil
      end

      it "and redirects to drop_route_start_time index page" do
        patch :update, id: drop_route_start_time, :drop_route_start_time => attributes_for(:drop_route_start_time, drop_start_time: Time.now + 2.week.to_i)
        expect(response).to redirect_to drop_route_start_times_path
      end

    end

    context "with invalid attributes" do

      it "does not update the drop_route_start_time in the database without drop_start_time" do
        patch :update, id: drop_route_start_time, :drop_route_start_time => attributes_for(:drop_route_start_time, drop_start_time: nil)
        expect(DropRouteStartTime.find_by(id: drop_route_start_time.id, drop_start_time: nil)).to be nil
      end

      it "does not update the drop_route_start_time in the database without route_id" do
        patch :update, id: drop_route_start_time, :drop_route_start_time => attributes_for(:drop_route_start_time, route_id: nil)
        expect(DropRouteStartTime.find_by(id: drop_route_start_time.id, route_id: nil)).to be nil
      end

      it "and re-renders edit pickup_route_start_time page" do
        patch :update, id: drop_route_start_time, :drop_route_start_time => attributes_for(:drop_route_start_time, drop_start_time: nil)
        expect(response).to render_template :edit
      end

    end

  end

end
