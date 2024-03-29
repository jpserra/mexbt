# -*- encoding: utf-8 -*-
# stub: netrc 0.7.9 ruby lib

Gem::Specification.new do |s|
  s.name = "netrc"
  s.version = "0.7.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Keith Rarick", "geemus (Wesley Beary)"]
  s.date = "2014-10-16"
  s.description = "This library can read and update netrc files, preserving formatting including comments and whitespace."
  s.email = "geemus@gmail.com"
  s.homepage = "https://github.com/geemus/netrc"
  s.rubygems_version = "2.2.2"
  s.summary = "Library to read and write netrc files."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<turn>, [">= 0"])
    else
      s.add_dependency(%q<turn>, [">= 0"])
    end
  else
    s.add_dependency(%q<turn>, [">= 0"])
  end
end
