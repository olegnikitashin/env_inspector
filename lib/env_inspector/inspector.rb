module EnvInspector
  class Inspector
    def self.check!
      required_envs = EnvInspector.configuration.env_list
      missing_envs = required_envs.inject([]) do |memo, env|
        memo << env if ENV[env.to_s].empty?
        memo
      end
      unless missing_envs.empty?
        raise RememberEnv::Errors::EnvMissing, "ENVs are not defined: #{missing_envs.join(', ')}"
      end
    end
  end
end
