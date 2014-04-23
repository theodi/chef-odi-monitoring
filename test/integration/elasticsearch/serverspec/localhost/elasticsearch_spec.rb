require 'spec_helper'

# Need ruby in order to run elasticsearch init scripts
describe command("ruby -v") do
  it { should return_stdout /1.9.3/ }
end

# Make sure elasticsearch is installed
describe file("/usr/local/bin/elasticsearch") do
  it { should be_file }
end

# Make sure elasticsearch is running
describe service("elasticsearch") do
  it { should be_running }
end

# Make sure elasticsearch is configured correctly
describe command("service elasticsearch status -v") do
  it { should return_stdout /elasticsearch 0.90.12 running/ }
  it { should return_stdout /OpenJDK 64-Bit Server VM/ }
  it { should return_stdout /238mb/ }
end
