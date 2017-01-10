# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "ygopal"
client_key               "#{current_dir}/ygopal.pem"
validation_client_name   "dev-lab-validator"
validation_key           "#{current_dir}/dev-lab-validator.pem"
chef_server_url          "https://chefserver.lab.com/organizations/dev-lab"
cookbook_path            ["#{current_dir}/../cookbooks"]
