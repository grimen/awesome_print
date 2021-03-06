# -*- encoding: utf-8 -*-
# Copyright (c) 2010-2011 Michael Dvorkin
#
# Awesome Print is freely distributable under the terms of MIT license.
# See LICENSE file or http://www.opensource.org/licenses/mit-license.php
#------------------------------------------------------------------------------
$:.push File.expand_path("../lib", __FILE__)
require 'awesome_print/version'

Gem::Specification.new do |s|
  s.name        = "awesome_print"
  s.version     = AwesomePrint.version
  s.platform    = Gem::Platform::RUBY
  s.authors     = "Michael Dvorkin"
  s.date        = "2011-11-08"
  s.email       = "mike@dvorkin.net"
  s.homepage    = "http://github.com/michaeldv/awesome_print"
  s.summary     = "Pretty print Ruby objects with proper indentation and colors"
  s.description = "Great Ruby dubugging companion: pretty print Ruby objects to visualize their structure. Supports custom object formatting via plugins"

  s.rubyforge_project = "awesome_print"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "bundler"
  s.add_development_dependency "rspec",  "~> 2.6.0"
  s.add_development_dependency "fakefs", "~> 0.2.0"
end
