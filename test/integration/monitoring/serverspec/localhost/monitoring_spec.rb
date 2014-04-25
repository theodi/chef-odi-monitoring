require 'spec_helper'

# Make sure serverdensity agent is running
describe service("sd-agent") do
  it { should be_running }
end

# Make sure serverdensity agent has got a key
describe file("/etc/sd-agent/config.cfg") do
  its(:content) { should match /sd_url: https:\/\/theodi.serverdensity.io/ }
  its(:content) { should match /agent_key: [0-9a-f]{32}/ }
end
