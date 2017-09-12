# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'link_thumbnailer/version'

Gem::Specification.new do |spec|
  spec.name          = "link_thumbnailer"
  spec.version       = LinkThumbnailer::VERSION
  spec.authors       = ["Pierre-Louis Gottfrois"]
  spec.email         = ["pierrelouis.gottfrois@gmail.com"]
  spec.description   = %q{Ruby gem generating thumbnail images from a given URL.}
  spec.summary       = %q{Ruby gem ranking images from a given URL returning an object containing images and website informations.}
  spec.homepage      = "https://github.com/gottfrois/link_thumbnailer"

  spec.files         = `git ls-files`.split($\)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'json'
  spec.add_dependency 'rake'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'net-http-persistent'
  spec.add_dependency 'video_info'
  spec.add_dependency 'image_info'
end
