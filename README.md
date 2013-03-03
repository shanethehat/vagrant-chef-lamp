# Practise Symfony App using Vagrant and Chef

This is a simple Symfony application that runs from a Vagrant powered VM. The VM is running on Ubuntu 12.04 with PHP 5.3.10.


## Usage

1. Install Vagrant and VirtualBox by the appropriate method for your OS
1. Run `vagrant up` from the project root to fire up the VM
1. Ensure Symfony's dependancies are pulled in with composer
1. Visit http://localhost:1337 to see the output


## Tests

The tests require the dependancies to be pulled in with Composer, and Selenium >= 2.31. Once Selenium is running execute `./run_behat.sh`.

### Composer

Get Composer if it not already installed and run `php composer.phar install`

### Selenium

Download and run Selenium with the default settings:

    wget http://selenium.googlecode.com/files/selenium-server-standalone-2.31.0.jar
    java -jar selenium-server-standalone-2.31.0.jar 


## Links

- [Vagrant getting started guide](http://docs.vagrantup.com/v1/docs/getting-started/index.html)
- [Provisioning Vagrant with Chef Solo](http://docs.vagrantup.com/v1/docs/provisioners/chef_solo.html)
- [Chef Solo Cookbooks guide](http://wiki.opscode.com/display/chef/Cookbooks)
