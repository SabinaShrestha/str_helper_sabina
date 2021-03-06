
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_helper_sabina/version"

Gem::Specification.new do |spec|
  spec.name          = "str_helper_sabina"
  spec.version       = StrHelperSabina::VERSION
  spec.authors       = ["Sabina Shrestha"]
  spec.email         = ["sabina.pari@yahoo.com"]

  spec.summary       = "String Helper"
  spec.homepage      = "https://github.com/SabinaShrestha/str_helper_sabina"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
