# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'akuma-client', path: 'akuma-client'
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'jsonapi-resources'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-cors'
gem 'rack-timeout'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

group :development, :test do
  gem 'brakeman'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'sqlite3'
end

group :development do
end
