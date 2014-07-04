# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'od_report/version'

Gem::Specification.new do |spec|
  spec.name          = "od_report"
  spec.version       = OdReport::VERSION
  spec.authors       = ["Eugene Gavrilov"]
  spec.email         = ["gavrilov.ea@gmail.com"]
  spec.summary       = %q{Generates ODF(ODS) files, given a template (.odt, .ods) and data, replacing tags}
  spec.description   = %q{Generates ODF(ODS) files, given a template (.odt, .ods) and data, replacing tags}
  spec.homepage      = "http://github.com/madding/od_report/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

#  spec.add_development_dependency "bundler", "~> 1.5"
#  spec.add_development_dependency "rake"
  spec.add_runtime_dependency('rubyzip', "~> 0.9.4")
  spec.add_runtime_dependency('nokogiri', ">= 1.5.0")
end
