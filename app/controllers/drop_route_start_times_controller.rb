class DropRouteStartTimesController < ApplicationController
  before_action :set_drop_route_start_time, only: [:show, :edit, :update, :destroy]

  # GET /drop_route_start_times
  # GET /drop_route_start_times.json
  def index
    # @drop_route_start_times = DropRouteStartTime.all
    @drop_route_start_times = DropRouteStartTime.includes(:route)
  end

  # GET /drop_route_start_times/1
  # GET /drop_route_start_times/1.json
  def show
  end

  # GET /drop_route_start_times/new
  def new
    @drop_route_start_time = DropRouteStartTime.new
  end

  # GET /drop_route_start_times/1/edit
  def edit
  end

  # POST /drop_route_start_times
  # POST /drop_route_start_times.json
  def create
    @drop_route_start_time = DropRouteStartTime.new(drop_route_start_time_params)

    respond_to do |format|
      if @drop_route_start_time.save
        format.html { redirect_to drop_route_start_times_path, notice: 'Drop route start time was successfully created.' }
        format.json { render :show, status: :created, location: @drop_route_start_time }
      else
        format.html { render :new }
        format.json { render json: @drop_route_start_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drop_route_start_times/1
  # PATCH/PUT /drop_route_start_times/1.json
  def update
    respond_to do |format|
      if @drop_route_start_time.update(drop_route_start_time_params)
        format.html { redirect_to drop_route_start_times_path, notice: 'Drop route start time was successfully updated.' }
        format.json { render :show, status: :ok, location: @drop_route_start_time }
      else
        format.html { render :edit }
        format.json { render json: @drop_route_start_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drop_route_start_times/1
  # DELETE /drop_route_start_times/1.json
  def destroy
    @drop_route_start_time.destroy
    respond_to do |format|
      format.html { redirect_to drop_route_start_times_url, notice: 'Drop route start time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drop_route_start_time
      @drop_route_start_time = DropRouteStartTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drop_route_start_time_params
      # params[:drop_route_start_time]
      params.require(:drop_route_start_time).permit(:route_id, :drop_start_time)
    end
end
