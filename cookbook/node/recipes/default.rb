#
# Cookbook:: node
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update

package 'nginx'

#  install nodejs
remote_file '/tmp/nodesource_setup.sh' do
	source 'https://deb.nodesource.com/setup_6.x'
	action :create	
end

execute "update node resources" do
	command "sh /tmp/nodesource_setup.sh"
end

package "nodejs" do
	action :upgrade
end
