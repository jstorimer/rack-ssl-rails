Gem::Specification.new do |s|
  s.name        = "rack-ssl-rails"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jesse Storimer"]
  s.email       = ["jstorimer@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Provides a railtie for use with rack-ssl.}
  s.description = %q{Provides a railtie for use with rack-ssl. Includes a handy configuration option that will set up the middleware for you.}

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rack-ssl'
end
