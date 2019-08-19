class AssetsController < ApplicationController
  before_action :set_asset, only: [:show, :update, :destroy]

  # GET /assets
  # GET /assets.json
  def index
    @assets = Asset.all
  end

  # GET /assets/1
  # GET /assets/1.json
  def show
  end

  # POST /assets
  # POST /assets.json
  def create
    @asset = Asset.new(asset_params)

    if @asset.save
      render :show, status: :created, location: @asset
    else
      render json: @asset.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assets/1
  # PATCH/PUT /assets/1.json
  def update
    if @asset.update(asset_params)
      render :show, status: :ok, location: @asset
    else
      render json: @asset.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assets/1
  # DELETE /assets/1.json
  def destroy
    @asset.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset
      @asset = Asset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_params
      params.require(:asset).permit(:name, :volume)
    end
end
