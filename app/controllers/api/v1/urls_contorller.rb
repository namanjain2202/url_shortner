class Api::V1::UrlsController < Api::V1::BaseController
  def create
    url = @current_user.shortened_urls.new(url_params)
    if url.save
      render json: { short_url: url.short_code }, status: :created
    else
      render json: { error: url.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    url = @current_user.shortened_urls.find(params[:id])
    if url.update(url_params)
      render json: { message: 'URL updated' }, status: :ok
    else
      render json: { error: url.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def url_params
    params.require(:shortened_url).permit(:original_url, :custom_alias, :expires_at)
  end
end