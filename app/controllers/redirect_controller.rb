class RedirectController < ApplicationController
  def show
    @shortened_url = ShortenedUrl.find_by(short_code: params[:id])
    if @shortened_url&.expires_at&.past?
      render json: { error: 'URL expired' }, status: :gone
    else
      @shortened_url.increment!(:clicks)
      UrlClick.create(shortened_url: @shortened_url, user_agent: request.user_agent, referrer: request.referer, ip_address: request.remote_ip)
      redirect_to @shortened_url.original_url, allow_other_host: true
    end
  end
end