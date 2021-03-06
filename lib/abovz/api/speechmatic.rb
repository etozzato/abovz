require 'sinatra/base'
class ::Speechmatic < Sinatra::Base
  get '/' do
    json_response 200, 'Speechmatic API MOCK'
  end

  private

  def json_response(response_code, response_body)
    content_type :json
    status response_code
    response_body
  end
end

stub_request(:any, /api.speechmatic.com/).to_rack(::Speechmatic)
