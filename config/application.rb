require File.expand_path('../boot', __FILE__)

require 'active_model/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'sprockets/railtie'
require 'elasticsearch/rails/instrumentation'

Bundler.require(*Rails.groups)

module Converge
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/lib #{config.root}/app/models/observers)
    config.active_record.default_timezone = :utc

    config.middleware.insert_after Rack::Sendfile, Rack::Cors do
      allow do
        origins *((Converge.config.cors.allowed_origins || '').split(',') +
                  [Converge.config.cors.allowed_origins_regex || ''])
        resource '*',
                 :headers => :any,
                 :expose  => %w(Content-Range Link),
                 :methods => [:get, :post, :options, :put, :patch, :delete]
      end
    end

    config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec
    end
    config.to_prepare do
      Doorkeeper::ApplicationsController.layout 'application'

      Doorkeeper::AuthorizationsController.layout 'application'

      Doorkeeper::AuthorizedApplicationsController.layout 'application'
    end
  end
end
