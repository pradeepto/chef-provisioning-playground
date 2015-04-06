chef-provisioning-playground
============================

Some experimental code with Chef Provisioning. Should work almost out of the box once you configure your knife.rb/client.rb with your credentials. Also feel free to set `bootstrap_options` in recipes to point to correct AMI ID, key, security groups etc.


Getting Started
----------------
- `gem install chef-provisioning chef-provisioning-aws chef-provisioning-fog chef-provisioning-vagrant`
- Upload cookbooks to your chef-server (you could use chef-zero or chef-solo as well)

Few example chef runs
---------------------

- CHEF_DRIVER=aws chef-client -r "recipe["cluster::first-server-aws"]"
- CHEF_DRIVER=fog:aws chef-client -r "recipe["cluster::first-server-fog"]"
- CHEF_DRIVER=vagrant chef-client -r "recipe["cluster::vagrant-cluster"]"

