# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "your-node-name"
client_key               "#{current_dir}/your-client-key.pem"
validation_client_name   "organisation-validator"
validation_key           "#{current_dir}/organisation-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/organisation"
cookbook_path            ["#{current_dir}/../cookbooks"]

knife[:aws_access_key_id] = "aws_access_key_id"
knife[:aws_secret_access_key] = "aws_secret_access_key"
knife[:region] = "aws-region"

knife[:aws_ssh_key_id] = "aws_ssh_key_id"