# -*- encoding: utf-8 -*-
require File.expand_path("../lib/random_record/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'random_record'
  s.version     = RandomRecord::VERSION
  s.author      = 'Morgan Showman'
  s.email       = 'morganshowman@gmail.com'
  s.homepage    = 'https://github.com/MorganShowman'
  s.summary     = 'Add the ability to retrieve random records from your ActiveRecord models'
  s.description = 'Extend ActiveRecord::Base to have the #random method to retrieve any number of random records from an ActiveRecord object.'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'sqlite3-ruby'

  s.add_dependency 'activerecord'

  s.files         = `git ls-files`.split('\n')
  s.require_paths = 'lib'
end
