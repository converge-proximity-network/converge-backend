source 'https://rubygems.org'

# Server
gem 'unicorn-rails'

# Framework
gem 'rails', '~> 4.2'

# Data
gem 'rails-observers'
gem 'paperclip', '~> 4.2'
gem 'bcrypt'
gem 'elasticsearch-model', '~> 0.1'
gem 'elasticsearch-rails', '~> 0.1'
gem 'pg'
gem 'active_model_serializers'
gem 'activeuuid', git: 'git@github.com:converge-proximity-network/activeuuid.git'

# Pagination
gem 'kaminari'
gem 'api-pagination'

# Front End
gem 'jquery-rails'
gem 'foundation-rails', '~> 5.5'
gem 'haml', '~> 4.0'
gem 'uglifier', '~> 2.7'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks'

# Auth
gem 'doorkeeper', '~> 2.1'
gem 'devise', '~> 3.4'

# Utility
gem 'fog'
gem 'hashr'
gem 'json'

# Middleware
gem 'rack-cors', require: 'rack/cors'

group :development do
  # Pretty
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails', '~> 0.3'

  # Coverage
  gem 'rails_best_practices'
end

group :test, :development do
  # Environment
  gem 'dotenv'
  gem 'spring'

  # Specs
  gem 'rspec-rails', '~> 3.1'
  gem 'factory_girl_rails', '~> 4.5'
  gem 'database_cleaner', '~> 1.4'

  # Pretty
  gem 'awesome_print'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'rspec_active_model_serializers'
end
