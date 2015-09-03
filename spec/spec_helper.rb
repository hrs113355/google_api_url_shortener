require 'bundler/setup'
Bundler.setup

require 'google_api_url_shortener'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :should
  end
end
