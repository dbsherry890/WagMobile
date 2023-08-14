# -*- encoding: utf-8 -*-
# stub: receipts 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "receipts".freeze
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/excid3/receipts/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/excid3/receipts", "source_code_uri" => "https://github.com/excid3/receipts" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Chris Oliver".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-01-17"
  s.description = "Receipts for your Rails application that works with any payment provider.".freeze
  s.email = ["excid3@gmail.com".freeze]
  s.homepage = "https://github.com/excid3/receipts".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.4.15".freeze
  s.summary = "Receipts for your Rails application that works with any payment provider.".freeze

  s.installed_by_version = "3.4.15" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<prawn>.freeze, [">= 1.3.0", "< 3.0.0"])
  s.add_runtime_dependency(%q<prawn-table>.freeze, ["~> 0.2.1"])
end
