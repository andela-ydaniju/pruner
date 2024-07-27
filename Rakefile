# frozen_string_literal: true
require File.expand_path('../config/application', __FILE__)
require 'ci/reporter/rake/rspec'
# Make sure we setup ci_reporter before executing our RSpec examples
task :spec => 'ci:setup:rspec'

Rails.application.load_tasks
