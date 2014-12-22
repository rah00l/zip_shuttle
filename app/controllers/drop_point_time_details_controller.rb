class DropPointTimeDetailsController < ApplicationController
  before_action :set_drop_point_time_detail, only: [:show, :edit, :update, :destroy]

  # GET /drop_point_time_details
  # GET /drop_point_time_details.json
  def index
    # @drop_point_time_details = DropPointTimeDetail.all
    @drop_point_time_details = DropPointTimeDetail.includes(:route, :location, :drop_route_start_time)
  end

  # GET /drop_point_time_details/1
  # GET /drop_point_time_details/1.json
  def show
  end

  # GET /drop_point_time_details/new
  def new
    @drop_point_time_detail = DropPointTimeDetail.new
  end

  # GET /drop_point_time_details/1/edit
  def edit
  end

  # POST /drop_point_time_details
  # POST /drop_point_time_details.json
  def create
    @drop_point_time_detail = DropPointTimeDetail.new(drop_point_time_detail_params)

    respond_to do |format|
      if @drop_point_time_detail.save
        format.html { redirect_to drop_point_time_details_path, notice: 'Drop point time detail was successfully created.' }
        format.json { render :show, status: :created, location: @drop_point_time_detail }
      else
        format.html { render :new }
        format.json { render json: @drop_point_time_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drop_point_time_details/1
  # PATCH/PUT /drop_point_time_details/1.json
  def update
    respond_to do |format|
      if @drop_point_time_detail.update(drop_point_time_detail_params)
        format.html { redirect_to drop_point_time_details_path, notice: 'Drop point time detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @drop_point_time_detail }
      else
        format.html { render :edit }
        format.json { render json: @drop_point_time_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drop_point_time_details/1
  # DELETE /drop_point_time_details/1.json
  def destroy
    @drop_point_time_detail.destroy
    respond_to do |format|
      format.html { redirect_to drop_point_time_details_url, notice: 'Drop point time detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def get_route_start_time
      @drop_route_start_times = Route.find(params[:route_id]).drop_route_start_times
      
     respond_to do |format|
      format.js
    end
  end

  def get_location
    @locations = Route.find(params[:route_id]).locations
    respond_to do |format|
      format.js
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drop_point_time_detail
      @drop_point_time_detail = DropPointTimeDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drop_point_time_detail_params
      # params[:drop_point_time_detail]
      params.require(:drop_point_time_detail).permit(:route_id, :location_id, :drop_route_start_time_id, :drop_time)
    end
end
