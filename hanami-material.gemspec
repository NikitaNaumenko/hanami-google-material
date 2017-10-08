# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hanami/material/version"

Gem::Specification.new do |spec|
  spec.name          = 'hanami-material'
  spec.version       = Hanami::Material::VERSION
  spec.authors       = ['Naumenko Nikita']
  spec.email         = ['naumenkoniki@gmail.com']

  spec.summary       = %q{ Google material library for Hanami.}
  spec.description   = %q{ Google material library for Hanami }
  spec.homepage      = 'https://github.com/NikitaNaumenko/hanami-material'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "hanami-assets", ">=0.2", "<2"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
