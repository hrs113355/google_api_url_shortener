# GoogleAPIUrlShortener

Google Url Shotener implemented by Google API. Initialize Shortener with API key to manage the quota, history of url shortening

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'google_api_url_shortener'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install google_api_url_shortener

## Usage

```
google_shortener = GoogleAPIUrlShortener.new(GOOGLE_API_KEY)
google_shortener.shorten("https://github.com/hrs113355/google_api_url_shortener")

=> "https://goo.gl/LJbyHv"
```

## Changes

* 1.0.1 - first implementation
