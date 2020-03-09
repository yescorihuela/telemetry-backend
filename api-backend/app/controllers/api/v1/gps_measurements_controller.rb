class Api::V1::GpsMeasurementsController < ApplicationController

  def check_location
    @gps_measurement = GpsMeasurementService.check_location(params[:device_id], params[:latitude], params[:longitude], params[:datetime])
    render json: Api::V1::GpsMeasurementSerializer.new(@gps_measurement), status: :ok
  end

end
