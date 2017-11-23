#
# Cookbook Name:: blockheads_server
# Recipe:: mac_os_x
#

CHECKSUM = '170eb3a5489ea7b3a9332fbaf444e143ab0eb2423a381ce668948ca33a6c4a11'

remote_file "#{Chef::Config[:file_cache_path]}/BlockheadsServer.zip" do
  source "http://theblockheads.net/share/BlockheadsServer.zip"
  #checksum "#{CHECKSUM}"
  notifies :run, 'execute[unzip-bserver]'
end

execute 'unzip-bserver' do
  command "unzip #{Chef::Config[:file_cache_path]}/BlockheadsServer.zip -d /Applications"
  action :nothing
end
