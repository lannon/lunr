# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lannon-lunr}
  s.version = "2.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Barnette"]
  s.date = %q{2011-03-15}
  s.description = %q{A simple read-only interface to Solr, built on Sunspot.
Lunr makes it easy to query and create objects from a Sunspot-managed
Solr index without requiring all the knowledge, code, and data used to
build the index in the first place. If you have complex indexes with a
stored fields and need to search / access those fields without access
to the original data store, Lunr might be what you're looking for.}
  s.email = %q{code@jbarnette.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".autotest",
    ".rvmrc",
    "CHANGELOG.rdoc",
    "Gemfile",
    "Gemfile.lock",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lannon-lunr.gemspec",
    "lib/lunr.rb",
    "lib/lunr/errors.rb",
    "lib/lunr/model.rb",
    "lib/lunr/model/klass.rb",
    "lib/lunr/search.rb",
    "lib/lunr/sunspot.rb",
    "test/test_lunr.rb",
    "test/test_lunr_model.rb",
    "test/test_lunr_search.rb"
  ]
  s.homepage = %q{http://github.com/lannon/lunr}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A simple read-only interface to Solr, built on Sunspot}
  s.test_files = [
    "test/helper.rb",
    "test/test_lunr.rb",
    "test/test_lunr_model.rb",
    "test/test_lunr_search.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["= 2.3.4"])
      s.add_runtime_dependency(%q<activerecord>, ["= 2.3.4"])
      s.add_runtime_dependency(%q<sunspot>, ["= 1.2.1"])
      s.add_development_dependency(%q<bundler>, ["= 1.0.10"])
      s.add_development_dependency(%q<jeweler>, ["= 1.5.2"])
      s.add_development_dependency(%q<fakeweb>, ["= 1.3.0"])
      s.add_development_dependency(%q<shoulda>, ["= 2.11.3"])
      s.add_development_dependency(%q<mocha>, ["= 0.9.12"])
      s.add_runtime_dependency(%q<activesupport>, ["= 2.3.4"])
      s.add_runtime_dependency(%q<activerecord>, ["= 2.3.4"])
      s.add_runtime_dependency(%q<sunspot>, ["~> 1.2"])
    else
      s.add_dependency(%q<activesupport>, ["= 2.3.4"])
      s.add_dependency(%q<activerecord>, ["= 2.3.4"])
      s.add_dependency(%q<sunspot>, ["= 1.2.1"])
      s.add_dependency(%q<bundler>, ["= 1.0.10"])
      s.add_dependency(%q<jeweler>, ["= 1.5.2"])
      s.add_dependency(%q<fakeweb>, ["= 1.3.0"])
      s.add_dependency(%q<shoulda>, ["= 2.11.3"])
      s.add_dependency(%q<mocha>, ["= 0.9.12"])
      s.add_dependency(%q<activesupport>, ["= 2.3.4"])
      s.add_dependency(%q<activerecord>, ["= 2.3.4"])
      s.add_dependency(%q<sunspot>, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<activesupport>, ["= 2.3.4"])
    s.add_dependency(%q<activerecord>, ["= 2.3.4"])
    s.add_dependency(%q<sunspot>, ["= 1.2.1"])
    s.add_dependency(%q<bundler>, ["= 1.0.10"])
    s.add_dependency(%q<jeweler>, ["= 1.5.2"])
    s.add_dependency(%q<fakeweb>, ["= 1.3.0"])
    s.add_dependency(%q<shoulda>, ["= 2.11.3"])
    s.add_dependency(%q<mocha>, ["= 0.9.12"])
    s.add_dependency(%q<activesupport>, ["= 2.3.4"])
    s.add_dependency(%q<activerecord>, ["= 2.3.4"])
    s.add_dependency(%q<sunspot>, ["~> 1.2"])
  end
end

