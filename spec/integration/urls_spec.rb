require 'swagger_helper'

RSpec.describe 'api/v1/urls', type: :request do
  path '/api/v1/urls' do
    post 'Creates a shortened URL' do
      tags 'URLs'
      consumes 'application/json'
      parameter name: :url, in: :body, schema: {
        type: :object,
        properties: {
          original_url: { type: :string },
          custom_alias: { type: :string },
          expires_at: { type: :string, format: 'date-time' }
        },
        required: [ 'original_url' ]
      }

      response '201', 'URL created' do
        let(:url) { { original_url: 'http://example.com' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:url) { { original_url: '' } }
        run_test!
      end
    end
  end
end