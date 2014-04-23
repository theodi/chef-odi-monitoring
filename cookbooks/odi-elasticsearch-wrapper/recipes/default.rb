#
# Cookbook Name:: odi-elasticsearch-wrapper
# Recipe:: default
#
# Copyright 2014, Open Data Institute
#

include_recipe "java"
include_recipe "elasticsearch::default"

package "ruby" do
  action :upgrade
end

service "elasticsearch" do
  action [:enable, :start]
end
