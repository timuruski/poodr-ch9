require "rake/testtask"
require 'rspec/core/rake_task'

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/test_*.rb"]
end


RSpec::Core::RakeTask.new(:spec)

# task :default => :test