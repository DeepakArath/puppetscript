#Puppet Stand-alone installation in Ubuntu

	sudo apt-get install puppet-common

##How to execute puppet script as verbose mode

	puppet apply --verbose site.pp

## sample puppet script for installing nginx


	case $operatingsystem {
	centos: { $apache = "nginx" }
	# Note that these matches are case-insensitive.
	redhat: { $apache = "nginx" }
	debian: { $apache = "nginx" }
	ubuntu: { $apache = "nginx" }
	default: { fail("Unrecognized operating system for webserver") }
	# "fail" is a function. We'll get to those later.
	}
	package {'nginx':
	name => $nginx,
	ensure => latest,
	}

