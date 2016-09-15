require 'abovz/initializers/webmock'
require 'abovz/configuration'
require 'abovz/version'

module Abovz
  extend Configuration

  def self.init
    Abovz.apis.each do |file|
      require File.join(File.dirname(__FILE__), 'abovz/api', file)
    end
  end
end

Abovz.init
