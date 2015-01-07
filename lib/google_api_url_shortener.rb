require 'rubygems'
require 'google/api_client'
require 'json'
require 'bundler/setup'
Bundler.require :default

class GoogleAPIUrlShortener
  def initialize(key)
    @client = Google::APIClient.new(:application_name => 'goodlife url shortener', :application_version => '1.0.0')
    @client.key = key
    @client.authorization = nil
    @urlshortener = @client.discovered_api('urlshortener')
  end

  def shorten(url)
    result = @client.execute(:api_method => @urlshortener.url.insert, :body_object => { 'longUrl' => url })
    body = JSON.parse(result.body)
    body['id']
  end
end

