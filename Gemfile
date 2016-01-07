source "https://rubygems.org"
gem "rails", "4.2.4"
gem "puma"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "base62", "~> 1.0"
gem "jquery-rails"
gem "rails-env-favicon"
gem "will_paginate", "~> 3.0.6"
gem "materialize-sass"
gem "faker"
gem "font-awesome-sass", "~> 4.5.0"
gem "modernizr-rails"
gem "turbolinks"
gem "jbuilder", "~> 2.0"
gem "sdoc", "~> 0.4.0", group: :doc
gem "coveralls", require: false
gem "bcrypt", "~> 3.1.7"
gem "zeroclipboard-rails"
# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # gem "byebug"
  gem "pry-byebug", platform: [:ruby_20]
  # Use sqlite3 as the database for Active Record
  gem "sqlite3"
  gem "rspec-rails", "~> 3.0"
  gem "factory_girl_rails", "~> 4.0"
  gem "capybara"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem "web-console", "~> 2.0"
end
group :production do
  gem "pg"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
