class Api::V1::TripsController < ApplicationController
  def check_events
    @events = EventService.get_events_by_date_device(params[:trip_id], params[:datetime], params[:license_plate])
    render json: Api::V1::EventSerializer.new(@events), status: :ok
  end  
end
