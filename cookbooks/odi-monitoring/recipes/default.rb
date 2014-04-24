#
# Cookbook Name:: odi-monitoring
# Recipe:: default
#
# Copyright 2014, Open Data Institute
#

include_recipe "serverdensity"

serverdensity node.name do
  sd = data_bag_item("serverdensity", "credentials")
  token sd['api_token']
end
