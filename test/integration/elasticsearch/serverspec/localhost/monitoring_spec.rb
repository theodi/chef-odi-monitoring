require 'spec_helper'

# Make sure serverdensity agent is running
describe service("sd-agent") do
  it { should be_running }
end
