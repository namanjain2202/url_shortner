class ShortenedUrlsController < ApplicationController
  before_action :authenticate_user!

  def create
    @shortened_url = current_user.shortened_urls.new(shortened_url_params)
    if @shortened_url.save
      render json: { short_url: url_for(controller: 'redirect', action: 'show', id: @shortened_url.short_code) }, status: :created
    else
      render json: { errors: @shortened_url.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def shortened_url_params
    params.require(:shortened_url).permit(:original_url, :expires_at, :short_code)
  end
end