class ApplicationController < ActionController::API

  protected

  def not_found
    raise ActionController::RoutingError.new('Not Found')
  rescue
    render_404
  end

  def render_404
    render json: nil, status: :not_found
  end    
end
