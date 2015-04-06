require 'chef/provisioning/vagrant_driver'

vagrant_box 'precise64' do
  url 'file:///home/clogeny/code/vagrant-boxes/precise64.box'
end

with_machine_options :vagrant_options => {
  'vm.box' => 'precise64'
}

machine_batch do
  machine 'test-vagrant-box' do
    converge true
  end
end