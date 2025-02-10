class Api::V1::AnalyticsController < Api::V1::BaseController
  def show
    url = @current_user.shortened_urls.find(params[:id])
    render json: { clicks: url.url_clicks.count }, status: :ok
  end
end