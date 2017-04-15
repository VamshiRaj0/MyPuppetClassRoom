 # Class: apache::homepage
 #
 #
 class apache::homepage inherits apache::params {

        file { '/var/www/html/index.html':
            ensure => file,
          #  owner  => owner,
         #   group  => group,
         #   mode   => mode,
        #    source => 'puppet:///modules/class/file.txt';
          #    source => 'puppet:///modules/index.html';  in our case
        content => file('apache/index.html')
        }
        
        service { "my service restart":
            name       => $apache::params::pack_name
            ensure     => running,
            enable     => true,
            hasrestart => true,
            hasstatus  => true,
            restart    => "",
            # pattern    => 'name',
        }

       #  $pack_name = $facts['os']['family'] ? {
       # 'Redhat' => 'httpd',
       # 'Debian' => 'apache2',
  #  }

# redundant code
      #  service { "test":
       #     name       => $apache::params::pack_name  
        #    ensure     => running,
         #   enable     => true,
          #  hasrestart => true,
           # hasstatus  => true,
            #restart    => ,
            # pattern    => 'test',
        #}

 } 