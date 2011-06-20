Gem::Specification.new do |s|
  s.name = "sprite"
  s.version = "0.2.2"

  s.default_executable = "sprite"
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.authors = ["Jacques Crocker", "Alf Mikula"]
  s.summary = "generate your css and sass sprites automagically"
  s.description = "sprite is a ruby executable that to easily generate sprites along with css, sass"

  s.email = "railsjedi@gmail.com"
  s.homepage = "http://github.com/railsjedi/sprite"
  s.rubyforge_project = "none"

  s.add_dependency 'rake'
  s.add_dependency 'rmagick'
  s.add_development_dependency "rspec", "~> 2.0"

  s.require_paths = ["lib"]
  s.files = `git ls-files`.split("\n")

  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = [
    "MIT-LICENSE",
    "README.md"
  ]
end
