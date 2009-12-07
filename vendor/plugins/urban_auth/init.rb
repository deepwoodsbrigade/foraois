if config.respond_to?(:gems)
  github = "http://gems.github.com" # to use for sources
  
  config.gem "rspec",
    :lib      => false,
    :version  => ">= 1.2.0"
  config.gem "rspec-rails",
    :lib      => false,
    :version  => ">= 1.2.0"
  config.gem "cucumber",
    :version  => ">= 0.3.98"
  config.gem "webrat",
    :version  => ">= 0.5.3"
  
  config.gem "haml",
    :source   => github,
    :version  => ">= 2.2.0"
  config.gem "chriseppstein-compass",
    :source   => github,
    :version  => ">= 0.6.13",
    :lib      => "compass"
    
  config.gem "mbleigh-seed-fu",
    :source   => github,
    :version  => ">= 1.0.0",
    :lib      => "seed-fu"
  
  config.gem "ruby-openid",
    :lib => "openid",
    :version => ">=2.0.4"
    
  config.gem 
else
  begin
    require 'openid'
  rescue LoadError
    begin
      gem 'ruby-openid', '>=2.0.4'
    rescue Gem::LoadError
      puts "Install the ruby-openid gem to enable OpenID support"
    end
  end
end

config.to_prepare do
  OpenID::Util.logger = Rails.logger
#  ActionController::Base.send :include, OpenIdAuthentication
#  ActionController::Base.send :include, AuthenticatedSystem
end