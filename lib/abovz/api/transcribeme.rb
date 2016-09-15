require 'sinatra/base'
class ::Transcribeme < Sinatra::Base
  get '/info' do
    json_response 200, 'Transcribeme'
  end

  private

  def json_response(response_code, response_body)
    content_type :json
    status response_code
    response_body
  end
end

stub_request(:any, /api.transcribeme.com/).to_rack(::Transcribeme)
