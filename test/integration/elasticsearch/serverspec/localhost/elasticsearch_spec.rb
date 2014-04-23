require 'spec_helper'

describe file("/usr/local/bin/elasticsearch") do
  it { should be_file }
end
