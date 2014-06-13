# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haversine_fast/version'

gem_spec = Gem::Specification.new do |spec|
  spec.name          = "haversine_fast"
  spec.version       = HaversineFast::VERSION 
  spec.authors       = ["Shaun Hubbard", "John F. Hogarty"]
  spec.email         = ["shaunhubbard2013@icloud.com", "hogihung@gmail.com"]
  spec.summary       = %q{A reasonable way to calculate the distance between two geographic locations given longitude and latitude for each.}
  spec.description   = %q{ This calculates distance between two parts of the earth via Haversine formula at the speed of C}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "rspec", "~> 3.00"
  spec.add_development_dependency "simplecov"

  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-awesome_print"


  #for C extension
  spec.add_development_dependency "rake-compiler"

  spec.extensions = "ext/calc_haversine/extconf.rb"

end

