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
        notify  => Service["${apache::params::pack_name}")
        
        }

        # Above is called interpolation. putting value os a string in another string
        # or value of a variable in other string
        
       # rESOURCE rELATIONSHIPS

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