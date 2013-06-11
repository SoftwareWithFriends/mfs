# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mfs/version'

Gem::Specification.new do |spec|
  spec.name          = "mfs"
  spec.version       = Mfs::VERSION
  spec.authors       = ["Tim Johson", "Eric Liu"]
  spec.email         = ["github@chubtoad.com"]
  spec.description   = %q{MongoFileStore lets you load files into mongo and attach metadata.}
  spec.summary       = %q{MongoFileStore stores files in mongo.}
  spec.homepage      = "https://github.com/SoftwareWithFriends/mfs"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mongoid", "~> 3.1.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
