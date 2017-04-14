class apache::params{
     $pack_name = $facts['os']['family'] ? {
        'Redhat' => 'httpd',
        'Debian' => 'apache2',
    }
}