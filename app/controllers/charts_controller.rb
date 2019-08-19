class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :update, :destroy]

  # GET /charts
  # GET /charts.json
  def index
    @charts = Chart.all
  end

  # GET /charts/1
  # GET /charts/1.json
  def show
  end

  # POST /charts
  # POST /charts.json
  def create
    @chart = Chart.new(chart_params)

    if @chart.save
      render :show, status: :created, location: @chart
    else
      render json: @chart.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /charts/1
  # PATCH/PUT /charts/1.json
  def update
    if @chart.update(chart_params)
      render :show, status: :ok, location: @chart
    else
      render json: @chart.errors, status: :unprocessable_entity
    end
  end

  # DELETE /charts/1
  # DELETE /charts/1.json
  def destroy
    @chart.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chart
      @chart = Chart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chart_params
      params.require(:chart).permit(:price, :asset_id)
    end
end
