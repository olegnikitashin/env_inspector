module EnvInspector
  class Inspector
    def self.check!
      required_envs = EnvInspector.configuration.env_list
      missing_envs = required_envs.inject([]) do |memo, env|
        memo << env unless ENV[env.to_s]
        memo
      end
      unless missing_envs.empty?
        raise EnvInspector::Errors::EnvMissing, "ENVs are not defined: #{missing_envs.join(', ')}"
      end
    end
  end
end
