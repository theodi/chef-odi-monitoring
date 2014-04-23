require 'spec_helper'

describe file("/usr/local/bin/elasticsearch") do
  it { should be_file }
end

describe command("elasticsearch") do
  it { should return_stdout 'You must set the ES_CLASSPATH var' }
end
