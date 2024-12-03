# See https://docs.chef.io/workstation/config_rb/ for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "aliraza24"
client_key               "#{current_dir}/aliraza24.pem"
chef_server_url          "https://api.chef.io/organizations/my_devops_org"
cookbook_path            ["#{current_dir}/../cookbooks"]
