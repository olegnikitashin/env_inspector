require 'env_inspector/version'
require 'env_inspector/errors/env_missing'
require 'env_inspector/inspector'

module EnvInspector
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :env_list

    def initialize
      @env_list = []
    end
  end
end
