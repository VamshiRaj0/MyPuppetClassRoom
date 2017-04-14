# Class: 
#
#
class apache::uninstall inherits apache::params {

    # $pack_name = $facts['os']['family'] ? {
     #   'Redhat' => 'httpd',
      #  'Debian' => 'apache2',
    #}

    package { $apache::params::pack_name:
        ensure => purged,
        
    }

    # resources
}