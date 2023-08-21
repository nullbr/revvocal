# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.6'

gem 'bootsnap', require: false
gem 'devise', '~> 4.9'
gem 'importmap-rails'
gem 'jbuilder'
gem 'omniauth', '~> 2.1'
gem 'omniauth-github', '~> 2.0'
gem 'omniauth-google-oauth2', '~> 1.1'
gem 'omniauth-rails_csrf_protection', '~> 1.0'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'web-console'

  gem 'bcrypt_pbkdf', '1.1.0'
  gem 'capistrano', '3.17.2'
  gem 'capistrano-passenger', '0.2.1'
  gem 'capistrano-rails', '1.6.2'
  gem 'capistrano-rbenv', '2.2.0'
  gem 'ed25519', '1.3.0'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
