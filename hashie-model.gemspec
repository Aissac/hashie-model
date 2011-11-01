# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hashie-model}
  s.version = "1.0.0.alpha"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{ZenCash.com}]
  s.date = %q{2011-11-01}
  s.description = %q{Hashie + ActiveModel 3, offering declared properties, validations, JSON serialization/deserialization}
  s.email = %q{istvan@zencash.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "LICENSE.txt",
    "README.md",
    "hashie-model.gemspec",
    "lib/hashie-model.rb",
    "lib/hashie_model/array_of.rb",
    "lib/hashie_model/associated_validator.rb",
    "lib/hashie_model/base.rb",
    "lib/hashie_model/money.rb",
    "lib/hashie_model/spec/matchers.rb",
    "lib/hashie_model/version.rb",
    "vendor/hashie/lib/hashie.rb",
    "vendor/hashie/lib/hashie/clash.rb",
    "vendor/hashie/lib/hashie/dash.rb",
    "vendor/hashie/lib/hashie/extensions/coercion.rb",
    "vendor/hashie/lib/hashie/extensions/deep_merge.rb",
    "vendor/hashie/lib/hashie/extensions/indifferent_access.rb",
    "vendor/hashie/lib/hashie/extensions/key_conversion.rb",
    "vendor/hashie/lib/hashie/extensions/merge_initializer.rb",
    "vendor/hashie/lib/hashie/extensions/method_access.rb",
    "vendor/hashie/lib/hashie/extensions/structure.rb",
    "vendor/hashie/lib/hashie/hash.rb",
    "vendor/hashie/lib/hashie/hash_extensions.rb",
    "vendor/hashie/lib/hashie/mash.rb",
    "vendor/hashie/lib/hashie/trash.rb",
    "vendor/hashie/lib/hashie/version.rb"
  ]
  s.homepage = %q{http://github.com/doublewide/hashie-model}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.6}
  s.summary = %q{Hashie + ActiveModel 3.x}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3.1.1"])
      s.add_runtime_dependency(%q<activemodel>, [">= 3.1.1"])
      s.add_runtime_dependency(%q<money>, [">= 3.7.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<shoulda-matchers>, ["~> 1.0.0.beta3"])
      s.add_development_dependency(%q<yard>, [">= 0.7.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<rb-fsevent>, [">= 0"])
      s.add_development_dependency(%q<growl>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-yard>, [">= 0"])
      s.add_development_dependency(%q<guard-bundler>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3.1.1"])
      s.add_dependency(%q<activemodel>, [">= 3.1.1"])
      s.add_dependency(%q<money>, [">= 3.7.1"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<shoulda-matchers>, ["~> 1.0.0.beta3"])
      s.add_dependency(%q<yard>, [">= 0.7.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<rb-fsevent>, [">= 0"])
      s.add_dependency(%q<growl>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-yard>, [">= 0"])
      s.add_dependency(%q<guard-bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3.1.1"])
    s.add_dependency(%q<activemodel>, [">= 3.1.1"])
    s.add_dependency(%q<money>, [">= 3.7.1"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<shoulda-matchers>, ["~> 1.0.0.beta3"])
    s.add_dependency(%q<yard>, [">= 0.7.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<rb-fsevent>, [">= 0"])
    s.add_dependency(%q<growl>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-yard>, [">= 0"])
    s.add_dependency(%q<guard-bundler>, [">= 0"])
  end
end

