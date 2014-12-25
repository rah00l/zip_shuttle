require 'rails_helper'

RSpec.describe LocationsController, :type => :controller do

describe "GET #new" do
    it "renders new Location page" do
      route = create(:route)
      # sign_in member
      get :new, route_id: route.id
      expect(assigns(:location)).to be_a_new(Location)
      expect(response).to render_template :new
    end
  end


end
