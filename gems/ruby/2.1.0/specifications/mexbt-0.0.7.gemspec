# -*- encoding: utf-8 -*-
# stub: mexbt 0.0.7 ruby lib

Gem::Specification.new do |s|
  s.name = "mexbt"
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["williamcoates"]
  s.date = "2015-01-22"
  s.description = "A lightweight ruby client for the meXBT exchange API"
  s.email = ["william@mexbt.com"]
  s.homepage = "https://github.com/meXBT/mexbt-ruby"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "meXBT API client"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 4.1.8"])
      s.add_runtime_dependency(%q<rest_client>, ["= 1.8.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 4.1.8"])
      s.add_dependency(%q<rest_client>, ["= 1.8.2"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 4.1.8"])
    s.add_dependency(%q<rest_client>, ["= 1.8.2"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
