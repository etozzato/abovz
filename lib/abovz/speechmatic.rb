require 'sinatra/base'

module Abovz
  class Speechmatic < Sinatra::Base

    get '/info' do
      json_response 200, 'Speechmatic'
    end

    private

    def json_response(response_code, response_body)
      content_type :json
      status response_code
      response_body
    end

  end
end
