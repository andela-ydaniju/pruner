# frozen_string_literal: true
source 'https://rubygems.org'

ruby '3.3.3'

gem 'annotate'
gem 'bcrypt'
gem 'coveralls'
gem 'faker'
gem 'font-awesome-sass'
gem 'importmap-rails'
gem 'materialize-sass'
gem 'pg'
gem 'rails'
gem 'sass-rails'
gem 'sprockets'
gem 'turbo-rails'
gem 'will_paginate'

group :development, :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'pry-rails'
  gem 'rubocop'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
end

group :test do
  gem 'brakeman', require: false
  gem 'ci_reporter'
  gem 'ci_reporter_rspec'
  gem 'rails-controller-testing'
end

group :production do
  gem 'puma'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "rails-env-favicon", "~> 0.0.5"
