class Api::V1::VehiclesController < ApplicationController
  before_action :set_params, only: [:show]
  def index
    @vehicles = Vehicle.all()
    render json: Api::V1::VehicleSerializer.new(@vehicles), status: :ok
  end

  def show
    render json: Api::V1::VehicleSerializer.new(@vehicle), status: :ok
  end

  private 
  def set_params
    @vehicle = Vehicle.find(params[:id])
  end
end
