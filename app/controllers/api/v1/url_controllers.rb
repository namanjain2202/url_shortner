class Api::V1::UrlsController < ApplicationController
    before_action :authenticate_user!
    
    def create
      url = current_user.shortened_urls.new(url_params)
      if url.save
        render json: { short_url: url.short_code }, status: :created
      else
        render json: { error: url.errors.full_messages }, status: :unprocessable_entity
      end
    end
    
    def shos
      url = ShortenedUrl.find_by(short_code: params[:short_code])
      if url && (url.expires_at.nil? || url.expires_at > Time.current)
        track_click(url)
        render json: { original_url: url.original_url }
      else
        render json: { error: 'URL not found or expired' }, status: :not_found
      end
    end
    
    private
    def url_params
      params.require(:shortened_url).permit(:original_url, :custom_alias, :expires_at)
    end
    
    def track_click(url)
      url.url_clicks.create(
        referrer: request.referer,
        ip_address: request.remote_ip,
        device_type: DeviceDetector.new(request.user_agent).name
      )
    end
  end