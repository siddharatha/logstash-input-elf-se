Gem::Specification.new do |s|
  s.name          = 'logstash-input-elf-se'
  s.version       = '0.1.2'
  s.licenses      = ['Apache-2.0']
  s.summary       = 'A Logstash plugin the receives events from Salesforce EventLogFile'
  s.description   = 'This gem is a logstash plugin required to be installed on top of the Logstash core pipeline
                       using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program , changes made are quite specific to schneider electric, we removed some logtypes to support our cause'
  s.homepage      = 'https://github.com/siddharatha/logstash-input-elf-se'
  s.authors       = ['Sid']
  s.email         = 'siddharatha.n@gmail.com'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'stud', '>= 0.0.22'
  s.add_runtime_dependency 'databasedotcom', '~> 1.3', '>= 1.3.3'
  s.add_development_dependency 'logstash-devutils', '>= 0.0.16'  
end
