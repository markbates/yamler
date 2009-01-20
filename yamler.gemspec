# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{yamler}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["markbates"]
  s.date = %q{2009-01-20}
  s.description = %q{yamler was developed by: markbates}
  s.email = %q{}
  s.extra_rdoc_files = ["README"]
  s.files = ["lib/yamler/template.rb", "lib/yamler/yamler.rb", "lib/yamler.rb", "README", "test/four.yml", "test/friends.yml", "test/lib", "test/lib/enemies.yml", "test/lib/others.yml", "test/lib/template_spec.rb", "test/lib/yamler_spec.rb", "test/simple.yml", "test/spec.opts", "test/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{}
  s.require_paths = ["lib", "lib"]
  s.rubyforge_project = %q{yamler}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{yamler}
  s.test_files = ["test/four.yml", "test/friends.yml", "test/lib", "test/lib/enemies.yml", "test/lib/others.yml", "test/lib/template_spec.rb", "test/lib/yamler_spec.rb", "test/simple.yml", "test/spec.opts", "test/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
