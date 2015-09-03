# GoogleAPIUrlShortener

Goo.gl Url Shotener implemented by Google API. Initialize Shortener with API key to avoid reaching request limits accessed by anonymous request.

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

First, register a [Google project](https://console.developers.google.com/project) and get API key with `urlshortener` API.

```
google_shortener = GoogleAPIUrlShortener.new(GOOGLE_API_KEY)
google_shortener.shorten("https://github.com/hrs113355/google_api_url_shortener")

=> "https://goo.gl/LJbyHv"

google_shortener.expand("https://goo.gl/LJbyHv") # protocol is required

=> "https://github.com/hrs113355/google_api_url_shortener"

```

## Changes

* 1.0.1 - first implementation
* 1.0.2 - add shorted url expand function
