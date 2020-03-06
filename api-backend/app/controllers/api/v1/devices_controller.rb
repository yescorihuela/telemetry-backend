module Api
  module V1
    class DevicesController < ApplicationController
        def index
          @device = Device.find(1)
          render json: DeviceSerializer.new(@device)
        end
    end
  end
end

