$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mintaka/version"

$:.push File.expand_path("../lib", __FILE__)
require "mintaka/version"
# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mintaka"
  s.version     = Mintaka::VERSION
  s.authors     = ["jcottobboni"]
  s.email       = ["jcottobboni@gmail.com"]
  s.homepage    = "http://www.google.com"
  s.summary     = "Engine for statics pages"
  s.description = "provides statics page inserts and control"
  s.license     = "MIT"


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rails", "~> 5.0.2"

  s.add_development_dependency("activesupport", ">= 3.1.0")
  s.add_development_dependency("pry")
end
