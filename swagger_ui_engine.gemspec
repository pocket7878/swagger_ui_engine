$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "swagger_ui_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "swagger_ui_engine"
  spec.version     = SwaggerUiEngine::VERSION
  spec.authors     = ["Pocket7878"]
  spec.email       = ["@my-domain.io"]
  spec.homepage    = "https://github.com/pocket7878/swagger_ui_engine"
  spec.summary     = "SwaggerUI Mountable engine for rails"
  spec.description = "SwaggerUI Mountable engine for rails"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.2"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails"
end
