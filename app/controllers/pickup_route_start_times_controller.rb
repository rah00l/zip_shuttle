class PickupRouteStartTimesController < ApplicationController
  before_action :set_pickup_route_start_time, only: [:show, :edit, :update, :destroy]

  # GET /pickup_route_start_times
  # GET /pickup_route_start_times.json
  def index
    # @pickup_route_start_times = PickupRouteStartTime.all
    @pickup_route_start_times = PickupRouteStartTime.includes(:route)
  end

  # GET /pickup_route_start_times/1
  # GET /pickup_route_start_times/1.json
  def show
  end

  # GET /pickup_route_start_times/new
  def new
    @pickup_route_start_time = PickupRouteStartTime.new
  end

  # GET /pickup_route_start_times/1/edit
  def edit
  end

  # POST /pickup_route_start_times
  # POST /pickup_route_start_times.json
  def create
    @pickup_route_start_time = PickupRouteStartTime.new(pickup_route_start_time_params)

    respond_to do |format|
      if @pickup_route_start_time.save
        format.html { redirect_to pickup_route_start_times_path, notice: 'Pickup route start time was successfully created.' }
        format.json { render :show, status: :created, location: @pickup_route_start_time }
      else
        format.html { render :new }
        format.json { render json: @pickup_route_start_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pickup_route_start_times/1
  # PATCH/PUT /pickup_route_start_times/1.json
  def update
    respond_to do |format|
      if @pickup_route_start_time.update(pickup_route_start_time_params)
        format.html { redirect_to pickup_route_start_times_path, notice: 'Pickup route start time was successfully updated.' }
        format.json { render :show, status: :ok, location: @pickup_route_start_time }
      else
        format.html { render :edit }
        format.json { render json: @pickup_route_start_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pickup_route_start_times/1
  # DELETE /pickup_route_start_times/1.json
  def destroy
    @pickup_route_start_time.destroy
    respond_to do |format|
      format.html { redirect_to pickup_route_start_times_url, notice: 'Pickup route start time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pickup_route_start_time
      @pickup_route_start_time = PickupRouteStartTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pickup_route_start_time_params
      # params[:pickup_route_start_time]
      params.require(:pickup_route_start_time).permit(:route_id, :pickup_start_time)
    end
end
