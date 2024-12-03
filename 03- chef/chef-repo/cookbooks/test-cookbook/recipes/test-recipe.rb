#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2024, The Authors, All Rights Reserved.



 file "/home/ali/Desktop/Devops /03- chef/cookbooks/Newfile" do
  content 'Welcome to Devops, this is Chef class!'
  action :create
end

execute "run a script" do
  command <<-EOH
  mkdir "/home/ali/Desktop/Devops /03- chef/cookbooks/MyDic"
  touch "/home/ali/Desktop/Devops /03- chef/cookbooks/MyFile"
EOH
end






