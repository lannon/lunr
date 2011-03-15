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
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "lannon-lunr"
  gem.homepage = "http://github.com/lannon/lunr"
  gem.summary = %Q{A simple read-only interface to Solr, built on Sunspot}
  gem.description = %Q{A simple read-only interface to Solr, built on Sunspot.
Lunr makes it easy to query and create objects from a Sunspot-managed
Solr index without requiring all the knowledge, code, and data used to
build the index in the first place. If you have complex indexes with a
stored fields and need to search / access those fields without access
to the original data store, Lunr might be what you're looking for.}
  gem.email = "code@jbarnette.com"
  gem.authors = ["John Barnette"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'activesupport', '2.3.4'
  gem.add_runtime_dependency 'activerecord', '2.3.4'
  gem.add_runtime_dependency 'sunspot', '~> 1.2'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "lunr #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
