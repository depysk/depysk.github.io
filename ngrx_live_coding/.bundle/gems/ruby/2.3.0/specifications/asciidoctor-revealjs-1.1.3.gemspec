# -*- encoding: utf-8 -*-
# stub: asciidoctor-revealjs 1.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "asciidoctor-revealjs"
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Olivier Bilodeau"]
  s.date = "2018-01-31"
  s.description = "Reveal.JS back-end for Asciidoctor and Asciidoctor.js. Write slides in AsciiDoc!"
  s.email = ["olivier@bottomlesspit.org"]
  s.executables = ["asciidoctor-revealjs"]
  s.extra_rdoc_files = ["README.adoc", "LICENSE.adoc", "HACKING.adoc"]
  s.files = ["HACKING.adoc", "LICENSE.adoc", "README.adoc", "bin/asciidoctor-revealjs"]
  s.homepage = "https://github.com/asciidoctor/asciidoctor-reveal.js"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.5.2.1"
  s.summary = "Converts AsciiDoc to HTML for a Reveal.js presentation"

  s.installed_by_version = "2.5.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<asciidoctor>, ["~> 1.5.6"])
      s.add_runtime_dependency(%q<thread_safe>, ["~> 0.3.5"])
      s.add_development_dependency(%q<rake>, ["~> 10.4.2"])
      s.add_development_dependency(%q<asciidoctor-doctest>, ["= 2.0.0.beta.4"])
      s.add_development_dependency(%q<pry>, ["~> 0.10.4"])
      s.add_development_dependency(%q<pry-byebug>, [">= 0"])
      s.add_development_dependency(%q<colorize>, [">= 0"])
      s.add_development_dependency(%q<asciidoctor-templates-compiler>, ["~> 0.3.0"])
      s.add_development_dependency(%q<slim>, ["~> 3.0.6"])
      s.add_development_dependency(%q<slim-htag>, ["~> 0.1.0"])
    else
      s.add_dependency(%q<asciidoctor>, ["~> 1.5.6"])
      s.add_dependency(%q<thread_safe>, ["~> 0.3.5"])
      s.add_dependency(%q<rake>, ["~> 10.4.2"])
      s.add_dependency(%q<asciidoctor-doctest>, ["= 2.0.0.beta.4"])
      s.add_dependency(%q<pry>, ["~> 0.10.4"])
      s.add_dependency(%q<pry-byebug>, [">= 0"])
      s.add_dependency(%q<colorize>, [">= 0"])
      s.add_dependency(%q<asciidoctor-templates-compiler>, ["~> 0.3.0"])
      s.add_dependency(%q<slim>, ["~> 3.0.6"])
      s.add_dependency(%q<slim-htag>, ["~> 0.1.0"])
    end
  else
    s.add_dependency(%q<asciidoctor>, ["~> 1.5.6"])
    s.add_dependency(%q<thread_safe>, ["~> 0.3.5"])
    s.add_dependency(%q<rake>, ["~> 10.4.2"])
    s.add_dependency(%q<asciidoctor-doctest>, ["= 2.0.0.beta.4"])
    s.add_dependency(%q<pry>, ["~> 0.10.4"])
    s.add_dependency(%q<pry-byebug>, [">= 0"])
    s.add_dependency(%q<colorize>, [">= 0"])
    s.add_dependency(%q<asciidoctor-templates-compiler>, ["~> 0.3.0"])
    s.add_dependency(%q<slim>, ["~> 3.0.6"])
    s.add_dependency(%q<slim-htag>, ["~> 0.1.0"])
  end
end
