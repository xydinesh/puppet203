class base::ssh {
  
  package { 'openssh-package': 
    ensure => present,
    name   => 'openssh-server',
  }
  
  file { 'sshd_config':
    name   => '/etc/ssh/sshd_config',
    ensure => file,
    owner  => 'root',
    group    => 'root',
    source   => 'puppet:///modules/base/sshd_config',
    require  => Package['openssh-package'],
    notify   => Service['sshd-service'],
  }
  
  service { 'sshd-service':
    name      => $base::params::ssh_name,
    ensure    => running,
    enable    => true,
  }
  
}
