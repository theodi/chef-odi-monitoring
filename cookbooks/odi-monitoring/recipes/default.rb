#
# Cookbook Name:: odi-monitoring
# Recipe:: default
#
# Copyright 2014, Open Data Institute
#

include_recipe "serverdensity"

serverdensity node.name do
  token "xxxxxxxxx"
end
