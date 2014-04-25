#!/usr/bin/env rake

desc "Runs foodcritic linter"
task :foodcritic do
  sh "bundle exec foodcritic -f any ."
end


namespace :knife do

  desc "Runs knife cookbook test"
  task :test do
    sh "bundle exec knife cookbook test #{File.dirname(__FILE__).split('/').last} -c test/.chef/knife.rb -o .."
  end

end

namespace :berkshelf do

  desc "Upload cookbook to chef server"
  task :upload do
    sh "bundle exec berks upload -c .berkshelf.json"
  end

end

task :default => ['foodcritic', 'knife:test']
