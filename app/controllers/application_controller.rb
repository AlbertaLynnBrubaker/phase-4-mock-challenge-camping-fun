class ApplicationController < ActionController::API
  include ActionController::Cookies
  
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid

  private

  def render_invalid(invalid)
    render json: {errors: ["validation errors"] }, status: :unprocessable_entity
  end
end
