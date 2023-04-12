
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "popular_manga/version"

Gem::Specification.new do |spec|
  spec.name          = "popular_manga"
  spec.version       = PopularManga::VERSION
  spec.authors       = ["'Allan Farca'"]
  spec.email         = ["'allan.farca@gmail.com'"]

  spec.summary       = %q{"Provides infomation on some popular manga series."}
  spec.description   = %q{"This gem will provide the user with a list of series. The user will select a series to learn more about by typing a number or typing exit to exit the gem. Once presented with one layer of information the user may choose to learn more about a certain manga series, go back to previous menu, or quit using the gem."}
  spec.homepage      = "https://github.com/Allan5829/popular_manga.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/Allan5829/popular_manga.git"
    spec.metadata["changelog_uri"] = "https://github.com/Allan5829/popular_manga.git"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri", "1.14.3"
end
