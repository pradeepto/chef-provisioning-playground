with_machine_options :ssh_username => 'ec2-user',
  :bootstrap_options => {
    :key_name => 'your-aws-key-name',
    :image_id => 'ami-XoAMIIDoX',
    :flavor_id => 'm3.medium',
    :groups => 'your-security-group-name' #This has to be AWS Securitry Group Name.
  }


machine'first-server-fog' do
  recipe 'cluster::install-packages'
end