#
# Cookbook Name:: odi-elasticsearch-wrapper
# Recipe:: default
#
# Copyright 2014, Open Data Institute
#

include_recipe "java"

remote_file "/tmp/elasticsearch-0.20.6.deb" do
  source "https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.20.6.deb"
  mode 0644
  checksum "8896b1dde95a09f27a3ec7d027f995ec27cd358f"
end

dpkg_package "elasticsearch" do
  source "/tmp/elasticsearch-0.20.6.deb"
  action :install
end

package "aspell-en" do
  action :upgrade
end

template "/etc/default/elasticsearch" do
  source "elasticsearch.erb"
  mode 0644
  owner "root"
  group "root"
  variables({
     heap_size: (node.memory.total.to_i / 4 * 3) / 1000,
  })
end

service "elasticsearch" do
  action [:enable, :start]
end

include_recipe "odi-monitoring"
