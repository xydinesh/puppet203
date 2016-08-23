class ntp::params {
  case $::operatingsystem {
    'ubuntu': {
      $template = 'ntp_ubuntu.conf.erb'
      $service_name = 'ntp'
      $default_servers = [ "0.ubuntu.pool.ntp.org iburst",
                           "1.ubuntu.pool.ntp.org iburst",
                           "2.ubuntu.pool.ntp.org iburst",
                           "3.ubuntu.pool.ntp.org iburst",]
    }
    'centos': {
      $template = 'ntp_centos.conf.erb'
      $service_name = 'ntpd'
      $default_servers = ["0.centos.pool.ntp.org iburst",
                          "1.centos.pool.ntp.org iburst",
                          "2.centos.pool.ntp.org iburst",
                          "3.centos.pool.ntp.org iburst", ]
    }
    'default': { 
      fail("Operating system $::operatingsystem not supported")
    }
  }

  $package_name = 'ntp'
}
