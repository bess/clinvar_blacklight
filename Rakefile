require 'rake'
require 'bundler'

require 'rspec/core/rake_task'
require 'yard'
require 'yard/rake/yardoc_task'

Dir.glob('lib/tasks/*.rake').each { |r| load r}

begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:ci) do |t|
      t.pattern = 'spec/lib/*.rb'
    end
  task :default => :spec
rescue LoadError
  # no rspec available
end
