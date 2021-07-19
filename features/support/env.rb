# Chamando todas as dependencias q
require "capybara"
require "capybara/cucumber"
require "faker"
require "rspec"
require "site_prism"
require "report_builder"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "json"

require_relative "services_helper.rb"

World Page

World Capybara::DSL
World Capybara::RSpecMatchers

$LOADS = YAML.load_file(File.dirname(__FILE__) + "/loads/loads.yml")
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV["AMBIENTE"]}.yml")
