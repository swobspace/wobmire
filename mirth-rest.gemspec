require_relative 'lib/mirth/rest/version'

Gem::Specification.new do |spec|
  spec.name          = "mirth-rest"
  spec.version       = Mirth::Rest::VERSION
  spec.authors       = ["Wolfgang Barth"]
  spec.email         = ["wob@swobspace.net"]

  spec.summary       = %q{Interface for Mirth Connect Rest API}
  spec.homepage      = "https://github.com/swobspace/mirth-rest/"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "activesupport"
  spec.add_dependency "nokogiri"
  spec.add_dependency "immutable-struct"
  spec.add_dependency "multi_json"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "highline"
end
