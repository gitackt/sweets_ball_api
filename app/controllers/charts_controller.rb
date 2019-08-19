class ChartsController < ApplicationController
  before_action :set_chart_from_asset, only: [:index, :show]

  # GET /charts
  # GET /charts.json
  def index
    @charts = Chart.where(asset_id: params[:asset_id]).order(created_at: :desc).pluck(:price)
  end

  # GET /charts/1
  # GET /charts/1.json
  def show
    @chart = Chart.last.pluck(:price)
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def chart_params
      params.require(:chart).permit(:asset_id)
    end
end
