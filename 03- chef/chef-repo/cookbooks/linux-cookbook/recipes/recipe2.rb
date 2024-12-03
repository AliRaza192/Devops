#
# Cookbook:: linux-cookbook
# Recipe:: recipe2
#
# Copyright:: 2024, The Authors, All Rights Reserved.

execute "run a script" do
  command <<-EOH
  mkdir "/home/ali/Desktop/Devops /03- chef/cookbooks/linux-cookbook/MyDic1"
  touch "/home/ali/Desktop/Devops /03- chef/cookbooks/linux-cookbook/MyFile2"
  EOH
end


