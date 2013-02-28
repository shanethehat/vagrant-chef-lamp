# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  
    config.vm.box = "precise32"
    config.vm.box_url = "http://files.vagrantup.com/precise32.box"

    # port forwarding

    config.vm.forward_port 80, 1337

    # chef-solo config

    config.vm.provision :chef_solo do |chef|
        
        chef.cookbooks_path = "cookbooks"
       
        chef.add_recipe("apt")
        chef.add_recipe("build-essential")
        chef.add_recipe("mysql")
        chef.add_recipe("apache2::mod_php5")
        chef.add_recipe("php")
        chef.add_recipe("vagrant_main")

        chef.json.merge!({
            :mysql => {
                :server_root_password => "rootpass"
            }
        })

    end

end
