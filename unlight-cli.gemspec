# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unlight_cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'unlight-cli'
  spec.version       = UnlightCLI::VERSION
  spec.authors       = ['蒼時弦也']
  spec.email         = ['aotoki@unlight.com.tw']

  spec.summary       = 'The OpenUnlight command line tool'
  spec.description   = 'The OpenUnlight command line tool'
  spec.homepage      = 'https://github.com/open-unlight/unlight-cli'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/open-unlight/unlight-cli'
  # spec.metadata["changelog_uri"] = "TODO"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in
  # the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'thor', '>= 0.18'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'bundler-audit', '~> 0.6.1'
  spec.add_development_dependency 'overcommit', '~> 0.52.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.79.0'
end
