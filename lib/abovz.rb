require 'abovz/initializers/webmock'
Dir.glob('../lib/abovz/api/*.rb').each { |file| require file }
require 'abovz/version'

module Abovz
end

# Abovz.init
