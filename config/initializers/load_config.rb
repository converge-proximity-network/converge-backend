module Converge
  def self.config
    @config ||= load_config
  end

  private

  def self.load_config
    Hashr.new(self.load_yaml("#{Rails.root}/config/config.yml")[Rails.env])
  end

  def self.load_yaml(file)
    # interpolate file with ERB to allow templating (<%= ENV['...'] %>)
    YAML.load(ERB.new(File.new(file).read).result)
  end
end
