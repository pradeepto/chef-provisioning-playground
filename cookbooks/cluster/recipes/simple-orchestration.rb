require 'chef/provisioning/aws_driver'

with_driver 'aws::us-west-2' do
  with_machine_options :ssh_username => 'ec2-user',
    :bootstrap_options => {
      :key_name => 'your-aws-key-name',
      :image_id => 'ami-XoAMIIDoX',
      :instance_type => 'm3.medium',
      :security_group_ids => 'your-security-group-id'
    }

  machine_batch do
    machine'app-box-1' do
      recipe 'cluster::install-packages'
    end

    machine 'db' do
      recipe 'cluster::install-postgres'
    end
  end
end