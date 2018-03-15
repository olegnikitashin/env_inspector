module EnvInspector
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configuration=(configuration)
      @configuration = configuration
    end

    def configure
      yield configuration
    end
  end

  class Configuration
    attr_accessor :env_list

    def initialize
      @env_list = []
    end
  end
end
