module Api
  module V1
    class DevicesController < ApplicationController
      def index
        render :json => {:saludo => 'hola mundo'}, status: :ok
      end
    end
  end
end

