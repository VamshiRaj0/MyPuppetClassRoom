# Class: apache::install
#
#
class apache::install inherits apache::params {
    
    # removing this below stuff
   # $pack_name = $facts['os']['family'] ? {
    ##    'Debian' => 'apache2',
  #  }

    package { $apache::params::pack_name:
        ensure => installed,
        
    }
    
}