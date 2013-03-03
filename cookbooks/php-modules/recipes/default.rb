include_recipe 'apt'
include_recipe 'php'

# install intl module
package "php5-intl" do
  action :install
end


