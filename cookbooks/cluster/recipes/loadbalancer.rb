require 'chef/provisioning/aws_driver'

with_machine_options :ssh_username => 'ec2-user',
  :bootstrap_options => {
    :key_name => 'your-aws-key-name',
    :image_id => 'ami-XoAMIIDoX',
    :instance_type => 'm3.medium',
    :security_group_ids => 'your-security-group-id'
  }

machine_batch do
  machine'web-box-1' do
    converge true
  end

  machine'web-box-2' do
    converge true
  end
end

load_balancer "webapp-elb" do
  load_balancer_options  :availability_zones => ['us-west-2a'],
                         :listeners => [{
                             :port => 80,
                             :protocol => :http,
                             :instance_port => 80,
                             :instance_protocol => :http,
                         }]
  machines ['web-box-1', 'web-box-2']
end
