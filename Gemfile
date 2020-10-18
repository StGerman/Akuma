# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'akuma-client', path: 'akuma-client'
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'dry-monads'
gem 'jsonapi-resources', '0.9.11' # TODO: Documentation works find for this version
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-cors'
# gem 'rack-timeout', group: 'production'
gem 'jsonapi.rb'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

group :development, :test do
  gem 'brakeman'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'sqlite3'
end

group :development do
end
