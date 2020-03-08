module Api
  module V1
    class DevicesController < ApplicationController
        before_action :set_device, only: [:show]
        def index

        end

        def show
          render json: DeviceSerializer.new(@device)
        end

        private 

        def set_device
          @device = Device.find(params[:id]) rescue not_found
        end
    end
  end
end

