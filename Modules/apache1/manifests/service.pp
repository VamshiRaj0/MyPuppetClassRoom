# Class: apache::service
#
#
class apache::service {

    service { $pack_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => '$pack_name',
    }
    
}