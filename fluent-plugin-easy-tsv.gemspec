lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name    = "fluent-plugin-easy-tsv"
  spec.version = "0.1.0"
  spec.authors = ["kerokero"]
  spec.email   = ["kerokero@gmail.com"]

  spec.summary       = %q{It is easy to use TSV formatter.}
  spec.description   = %q{You do not need to specify keys parameter.}
  spec.homepage      = "https://github.com/k63207/fluent-plugin-easy-tsv/blob/master/fluent-plugin-easy-tsv.gemspec"
  spec.license       = "Apache-2.0"

  test_files, files  = `git ls-files -z`.split("\x0").partition do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.files         = files
  spec.executables   = files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = test_files
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "test-unit", "~> 3.0"
  spec.add_runtime_dependency "fluentd", [">= 0.14.10", "< 2"]
end
