class apache::install {

        case $operatingsystem {
        centos: {
                $apache = "httpd"
                $service_name = "httpd"
                }

        ubuntu: {
                $apache = "apache2"
                $service_name = "apache2"
                }

        default: { fail("Unrecognized operating system for webserver") }
        # "fail" is a function. We'll get to those later.
        }

        package {'apache':
        name => $apache,
        ensure => latest,
        }
        service {'service':
        name => $service_name,
        ensure => running,
        enable => true,
        }
}

class apache {
        include apache::install
        }
