
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "madan/version"

Gem::Specification.new do |spec|
  spec.name          = "madan"
  spec.version       = Madan::VERSION
  spec.authors       = ["Taff Gao"]
  spec.email         = ["gaotongfei1995@gmail.com"]

  spec.summary       = %q{Preview markdown file in terminal.}
  spec.description   = %q{Thanks to @piotrmurach's great work, you can preview markdown file in terminal with a friendly output now.}
  spec.homepage      = "https://github.com/gaotongfei/madan"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"

  #spec.add_dependency "tty-markdown"
  spec.add_dependency "tty-pager"
  spec.add_dependency "commander"
end
