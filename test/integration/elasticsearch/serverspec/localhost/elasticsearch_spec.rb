require 'spec_helper'

describe package("elasticsearch") do
  it { should be_installed }
end
