# Class: apache1
# ===========================
#
# Full description of class apache1 here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'apache1':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
   # $pack_name = $facts['os']['family'] ? {
    #    'Redhat' => 'httpd',
     #   'Debian' => 'apache2',
    #}

   # package { '$pack_name':
    #    ensure => purged,
        
   # }

# init.pp should not contain code it should contain what has to be called when your module is called by default .
#so here i want to write only installation.. 

class apache1 {
    include apache::install

    include apache::service

}
