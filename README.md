##### Netspective Puppet Script for Server Side Installations and Configurations

This puppet script different modules that needed for various server side installations and configurations. Configured eash installation/configuration as seprate modules.

**Server Configuration Management Setup**

Install Git and Puppet...

`sudo apt-get install -y git-core puppet`

`cd $HOME`

Clone the puppet script:

`sudo git clone http://rcs.cm.netspective.com/netspective-puppet-script-for-installations.git`

`sudo cp -Rv netspective-puppet-script-for-installations/modules/* /etc/puppet/modules`

`sudo cp netspective-puppet-script-for-installations/manifests/nodes.pp /etc/puppet/manifests/`

Edit /etc/puppet/manifests/nodes.pp to include the needed modules.

`sudo puppet apply /etc/puppet/manifests/nodes.pp`

`sudo reboot`