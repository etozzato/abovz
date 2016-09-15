module Abovz
  module Configuration
    attr_accessor :apis

    DEFAULT_APIS =
      Dir.entries(
        File.join(File.dirname(__FILE__), 'api')
      ).find_all { |el| el =~ /\.rb$/ }

    def apis
      @apis || DEFAULT_APIS
    end

    def configure
      yield self
    end
  end
end
