# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'google_api_url_shortener/version'

Gem::Specification.new do |spec|
  spec.name          = "google_api_url_shortener"
  spec.version       = GoogleAPIUrlShortener::VERSION
  spec.authors       = ["hrs"]
  spec.email         = ["hrs113355@gmail.com"]
  spec.summary       = %q{Googl url shortener with google api.}
  spec.description   = %q{Goo.gl Url Shotener implemented by Google API. Initialize Shortener with API key to avoid reaching request limits accessed by anonymous request.}
  spec.homepage      = "https://github.com/hrs113355/google_api_url_shortener"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.11"

  spec.add_dependency "google-api-client", "~> 0.7"
end
