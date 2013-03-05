# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  
    config.vm.box = "precise32"
    config.vm.box_url = "http://files.vagrantup.com/precise32.box"

    # port forwarding

    config.vm.forward_port 80, 1337

    # set up host only networking for nfs support

    config.vm.network :hostonly, "172.168.1.200"

    # change mounting permissions on the root folder so that Apache can write

    config.vm.share_folder("v-root", "/vagrant", ".", :extra => "dmode=777,fmode=777", :nfs => true)

    # increase default memory capacity

    config.vm.customize ["modifyvm", :id, "--memory", "1024"]

    # chef-solo config

    config.vm.provision :chef_solo do |chef|
        
        chef.cookbooks_path = "cookbooks"
       
        chef.add_recipe("apt")
        chef.add_recipe("build-essential")
        chef.add_recipe("xml")
        chef.add_recipe("mysql")
        chef.add_recipe("apache2::mod_php5")
        chef.add_recipe("apache2::mod_rewrite")
        chef.add_recipe("php::module_apc")
        chef.add_recipe("php::module_mysql")
        chef.add_recipe("php-modules")
        chef.add_recipe("git")
        chef.add_recipe("composer")
        chef.add_recipe("hostfile")
        
        chef.json.merge!({
            "mysql" => {
                "server_root_password" => "rootpass"
            },
            "php" => {
#"install_method" => "source",
                "conf_dir" => '/etc/php5/apache2',
                "directives" => {
                    'date.timezone' => 'Europe/London',
                    'short_open_tag' => 0,
                }
            }
        })

    end

end
