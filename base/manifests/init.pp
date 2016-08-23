class base {
  $dnsutils = $osfamily ? {
    'Redhat' => 'bind-utils',
    'Debian' => 'dnsutils',
  }

  $systemupgrade = $osfamily ? {
    'Redhat' => '/usr/bin/yum update -y',
    'Debian' => '/usr/bin/apt-get upgrade -y',
  }

  schedule { 'system-upgrade-schedules':
    period => daily,
    range  => '00:00 - 01:00',
  }

  exec { 'system-upgrade':
    schedule => 'system-upgrade-schedules',
    name     => $systemupgrade,
  }

  package { ['tree', $dnsutils, 'emacs']:
    ensure => present,
  }
}
