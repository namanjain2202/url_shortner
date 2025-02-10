class Api::V1::BaseController < ApplicationController
  before_action :authenticate_user!

  private

  def authenticate_user!
    token = request.headers['Authorization'].split(' ').last
    payload = JWT.decode(token, Rails.application.secrets.secret_key_base).first
    @current_user = User.find(payload['user_id'])
  rescue
    render json: { error: 'Unauthorized' }, status: :unauthorized
  end
end