# Capistrano
module Capistrano
  # Bundle
  module Bundle
    # Copy
    module Copy
      # Quick-Access to this gems root directory
      #
      # @return [String] Root directory of this gem
      def self.root_path
        File.expand_path('../../../..', __FILE__)
      end
    end
  end
end

require 'capistrano/bundle/copy/version'
require 'capistrano/bundle/copy/deploy'
