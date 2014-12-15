class PickupPointTimeDetailsController < ApplicationController
  before_action :set_pickup_point_time_detail, only: [:show, :edit, :update, :destroy]

  # GET /pickup_point_time_details
  # GET /pickup_point_time_details.json
  def index
    @pickup_point_time_details = PickupPointTimeDetail.all
  end

  # GET /pickup_point_time_details/1
  # GET /pickup_point_time_details/1.json
  def show
  end

  # GET /pickup_point_time_details/new
  def new
    @pickup_point_time_detail = PickupPointTimeDetail.new
  end

  # GET /pickup_point_time_details/1/edit
  def edit
  end

  # POST /pickup_point_time_details
  # POST /pickup_point_time_details.json
  def create
    @pickup_point_time_detail = PickupPointTimeDetail.new(pickup_point_time_detail_params)

    respond_to do |format|
      if @pickup_point_time_detail.save
        format.html { redirect_to @pickup_point_time_detail, notice: 'Pickup point time detail was successfully created.' }
        format.json { render :show, status: :created, location: @pickup_point_time_detail }
      else
        format.html { render :new }
        format.json { render json: @pickup_point_time_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pickup_point_time_details/1
  # PATCH/PUT /pickup_point_time_details/1.json
  def update
    respond_to do |format|
      if @pickup_point_time_detail.update(pickup_point_time_detail_params)
        format.html { redirect_to @pickup_point_time_detail, notice: 'Pickup point time detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @pickup_point_time_detail }
      else
        format.html { render :edit }
        format.json { render json: @pickup_point_time_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pickup_point_time_details/1
  # DELETE /pickup_point_time_details/1.json
  def destroy
    @pickup_point_time_detail.destroy
    respond_to do |format|
      format.html { redirect_to pickup_point_time_details_url, notice: 'Pickup point time detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_route_start_time
    puts "*-*-****************************"
    puts "*-*-****************************"
    puts "*-*-****************************"
    puts params.inspect
    puts "*-*-****************************"
    puts "*-*-****************************"
    puts "*-*-****************************"

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickup_point_time_detail
      @pickup_point_time_detail = PickupPointTimeDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pickup_point_time_detail_params
      params[:pickup_point_time_detail]
    end
end