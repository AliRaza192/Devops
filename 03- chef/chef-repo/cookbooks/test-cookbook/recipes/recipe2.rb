#
# Cookbook:: test-cookbook
# Recipe:: recipe2
#
# Copyright:: 2024, The Authors, All Rights Reserved.

  package 'tree' do
    action :install
  end

  file "/home/ali/Desktop/Devops /03- chef/cookbooks/myfile2" do
    content 'this is second recipe and second file'
    action :create
    owner 'ali'
    group 'ali'
  end
  




