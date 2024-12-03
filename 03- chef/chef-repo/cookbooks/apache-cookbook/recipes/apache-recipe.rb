#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2024, The Authors, All Rights Reserved.

package 'apache2' do
action :install
end

file '/home/ali/Desktop/Devops /03- chef/cookbooks/test-cookbook/index.htmlapache2' do
content 'Welcome to Devops Course'
action :create
end


service 'apache2' do
action [:enable, :start]
end

