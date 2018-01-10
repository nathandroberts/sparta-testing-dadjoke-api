require "json"
require 'httparty'
require 'rack/test'
require 'pg'
require_relative "../lib/dad_joke_api"


RSpec.configure do |config|
  config.formatter = :documentation
end
