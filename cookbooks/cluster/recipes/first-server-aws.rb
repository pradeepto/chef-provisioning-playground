require 'chef/provisioning/aws_driver'

with_machine_options :ssh_username => 'ec2-user',
  :bootstrap_options => {
    :key_name => 'your-aws-key-name',
    :image_id => 'ami-XoAMIIDoX',
    :instance_type => 'm3.medium',
    :security_group_ids => 'your-security-group-id' #This has to be AWS Securitry Group ID(s).
  }


machine'first-server-aws' do
  recipe 'cluster::install-packages'
end