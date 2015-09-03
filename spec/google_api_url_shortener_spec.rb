require 'spec_helper'

describe GoogleAPIUrlShortener do
  describe "#shorten" do
    it "shortens url" do
      long_url = "http://github.com/hrs113355/google_api_url_shortener"
      google_shortener = GoogleAPIUrlShortener.new(ENV['API_KEY'])

      short_url = google_shortener.shorten("http://github.com/hrs113355/google_api_url_shortener")
      short_url.match(/^https?:\/\/goo.gl\//).should_not == nil
      # todo: check with expanded url in the future
    end
  end
end
