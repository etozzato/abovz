require 'sinatra/base'
class ::Box < Sinatra::Base
  get '/' do
    json_response 200, 'Box API MOCK'
  end

  private

  def json_response(response_code, response_body)
    content_type :json
    status response_code
    response_body
  end
end

stub_request(:any, /api.box.com/).to_rack(::Box)
