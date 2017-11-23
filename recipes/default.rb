#
# Cookbook Name:: blockheads-server
# Recipe:: default
#

case node['platform_family'] 
when 'mac_os_x'
  include_recipe 'blockheads_server::_mac_os_x'
end
