class Api::V1::TripsController < ApplicationController
  def check_trips
    @trips = TripService.get_trips_by_date(params[:datetime])
    render json: Api::V1::TripSerializer.new(@trips), status: :ok
  end
  def check_events
    @events = EventService.get_events_by_date_device(params[:trip_id], params[:datetime], params[:license_plate])
    render json: Api::V1::EventSerializer.new(@events), status: :ok
  end

  def check_coordinates
    @coordinates = GpsMeasurementService.check_location(params[:device_id], params[:latitude], params[:longitude], params[:datetime])
    render json: Api::V1::GpsMeasurementSerializer.new(@coordinates), status: :ok
  end

end
