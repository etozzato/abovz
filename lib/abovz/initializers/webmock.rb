require 'webmock'
include WebMock::API
WebMock.enable!
WebMock.disable_net_connect!(allow_localhost: true)
stub_request(:any, /api.speechmatic.com/).to_rack(Abovz::Speechmatic)
stub_request(:any, /api.transcribeme.com/).to_rack(Abovz::Transcribeme)
