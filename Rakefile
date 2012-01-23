# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
require './lib/hashie_model/version'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "hashie-model"
  gem.homepage = "http://github.com/doublewide/hashie-model"
  gem.version = HashieModel::Version::STRING
  gem.license = "MIT"
  gem.summary = %Q{Hashie2 + ActiveModel 3.x}
  gem.description = %Q{Hashie2 + ActiveModel 3, offering declared properties, validations, JSON serialization/deserialization}
  gem.email = "istvan@zencash.com"
  gem.authors = ["ZenCash.com"]
  
  gem.files = %w[README.md LICENSE.txt hashie-model.gemspec] +
    [Dir.glob('lib/**/*.rb'), Dir.glob('vendor/hashie2/lib/**/*.rb')].flatten
    
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :default => :spec

require 'yard'
YARD::Rake::YardocTask.new
