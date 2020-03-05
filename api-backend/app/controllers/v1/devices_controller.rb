class V1::DevicesController < ApplicationController
    def index
        return json: {:saludo => 'hola mundo'}
    end
end
