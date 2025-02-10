class ShortenedUrlsController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = current_user.shortened_urls.ransack(params[:q])
    @shortened_urls = @q.result
  end

  def create
    @url = current_user.shortened_urls.new(url_params)
    if @url.save
      render json: @url, status: :created
    else
      render json: @url.errors, status: :unprocessable_entity
    end
  end

  private

  def url_params
    params.require(:url).permit(:original_url, :custom_alias, :expires_at)
  end
end