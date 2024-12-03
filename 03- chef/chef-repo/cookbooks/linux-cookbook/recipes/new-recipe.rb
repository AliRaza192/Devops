#
# Cookbook:: linux-cookbook
# Recipe:: new_Recipe
#
# Copyright:: 2024, The Authors, All Rights Reserved.

file '/home/ali/Desktop/Devops /03- chef/cookbooks/linux-cookbook/newFile' do
  content 'Linux CookBook '
  action :create
end

execute "run a script" do
  command <<-EOH
  mkdir "/home/ali/Desktop/Devops /03- chef/cookbooks/linux-cookbook/linux_dic"
  touch "/home/ali/Desktop/Devops /03- chef/cookbooks/linux-cookbook/linux_file" 
EOH
end


user "MyUser1" do
  action :create
end 


group "MyDevopsGroup" do
  action :create
  members 'MyUser1'
  append true
end


user "MyUser2"
file "/home/ali/Desktop/Devops /03- chef/cookbooks/linux-cookbook/devops_file" 








