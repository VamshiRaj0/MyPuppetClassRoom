 # Class: apache::homepage
 #
 #
 class apache::homepage {

        file { '/var/www/index.html':
            ensure => file,
          #  owner  => owner,
         #   group  => group,
         #   mode   => mode,
        #    source => 'puppet:///modules/class/file.txt';
          #    source => 'puppet:///modules/index.html';  in our case
        content => file('apache/index.html')
        }

         $pack_name = $facts['os']['family'] ? {
        'Redhat' => 'httpd',
        'Debian' => 'apache2',
    }

# redundant code
        service { "test":
            name       => pack_name  
            ensure     => running,
            enable     => true,
            hasrestart => true,
            hasstatus  => true,
            restart    => ,
            # pattern    => 'test',
        }

 } 