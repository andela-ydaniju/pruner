# frozen_string_literal: true
source 'https://rubygems.org'

ruby '3.3.3'

gem 'rails'
gem 'sass-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'will_paginate'
gem 'materialize-sass'
gem 'faker'
gem 'font-awesome-sass'
gem 'modernizr-rails'
gem 'turbolinks'
gem 'coveralls'
gem 'bcrypt'
gem 'zeroclipboard-rails'
gem 'annotate'
gem 'pg'

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'rubocop'
end

group :test do
  gem 'ci_reporter'
  gem 'ci_reporter_rspec'
  gem 'brakeman', require: false
end

group :production do
  gem 'puma'
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
