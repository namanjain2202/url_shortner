class ShortenedUrlsController < ApplicationController
  def index
    @q = current_user.shortened_urls.ransack(params[:q])
    @shortened_urls = @q.result
  end
end