# Class: apache::install
#
#
class apache::install {

    $pack_name = $facts['os']['family'] ? {
        'Redhat' => 'httpd',
        'Debian' => 'apache2',
    }

    package { $pack_name:
        ensure => installed,
        
    }
    
}