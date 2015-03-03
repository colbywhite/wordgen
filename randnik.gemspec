require_relative 'lib/randnik/version'
require 'rake'

Gem::Specification.new do |s|
  s.name        = 'randnik'
  s.version     = Randnik.version
  s.summary     = 'A command-line tool to generate random words'
  s.description = 'A command-line tool to generate random words based on the wordnik API'
  s.authors     = ['Colby M. White']
  s.email       = 'colbywhite@users.noreply.github.com'
  s.files       = Rake::FileList.new 'lib/**/*.rb'
  s.homepage    = 'https://github.com/colbywhite/randnik'
  s.license     = 'MIT'
  s.executables << 'word-gen'
  s.add_runtime_dependency 'wordnik', '~> 4.12'
  s.add_runtime_dependency 'rest-client', '~> 1.7'
  s.add_development_dependency 'rake', '~> 10.4'
end