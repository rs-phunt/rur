
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rur/version'

Gem::Specification.new do |spec|
  spec.name          = 'rur'
  spec.version       = Rur::VERSION
  spec.authors       = ['phunt']
  spec.email         = ['phunt@runsystem.net']

  spec.summary       = %q{Rur - Rubocop reports.}
  spec.description   = %q{Rubocop reports by HTML.}
  spec.homepage      = 'http://phunt.site'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.3.0'

  spec.post_install_message = 'Thanks for installing!'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_runtime_dependency 'rubocop', '~> 0.66.0'
  spec.add_runtime_dependency 'high_voltage', '~> 3.1'
end
