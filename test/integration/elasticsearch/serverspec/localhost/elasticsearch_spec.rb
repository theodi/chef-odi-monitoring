require 'spec_helper'

# Need ruby in order to run elasticsearch init scripts
describe command("ruby -v") do
  it { should return_stdout /1.9.3/ }
end

describe file("/usr/local/bin/elasticsearch") do
  it { should be_file }
end

describe command("elasticsearch") do
  it { should return_stdout 'You must set the ES_CLASSPATH var' }
end
