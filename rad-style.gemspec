lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rad/style/version'

Gem::Specification.new do |spec|
  spec.name          = 'rad-style'
  spec.version       = Rad::Style::VERSION
  spec.authors       = ['Mike Boyd', 'Gary Foster', 'Caleb Tocco']
  spec.email         = ['mike.boyd@radicalbear.com']
  spec.summary       = 'This gem will keep all the rubocop files the same throughout radical bear repos'
  spec.homepage      = 'https://github.com/radicalbear/rad_style'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rubocop', '~> 0.92.0'
  spec.add_development_dependency 'rubocop-rails', '~> 2.8.1'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.43.2'
end
