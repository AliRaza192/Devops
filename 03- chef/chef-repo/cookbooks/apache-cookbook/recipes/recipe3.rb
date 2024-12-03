#
# Cookbook:: apache-cookbook
# Recipe:: recipe3
#
# Copyright:: 2024, The Authors, All Rights Reserved.

  
file '/home/ali/Desktop/Devops /03- chef/cookbooks/apache-cookbook/basicinfo' do
 content "This is to get Attributes
 HOSTNAME: #{node['hostname']}
 IPADDRESS: #{node['ipaddress']}
 CPU: #{node['cpu']['0']['mhz']}
 MEMORY: #{node['memory']['total']}"
 owner 'ali'
action :create
end


