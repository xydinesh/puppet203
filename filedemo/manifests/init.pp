class filedemo {
  File {
    owner => 'root',
    group => 'finance',
    mode  => '660',
  }  
  
  $homedir = '/root'
  $content = 'Test content'
  
  file {"${homedir}/myfile1.txt":
    content => $content,
  }

  file { "${homedir}/myfile2.txt":
    group   => 'wheel',
    content => "${content} new2",
  }

  file { "${homedir}/myfile3.txt":
    owner   => 'dinesh',
    content => "${content} new3 dines",
  }
  
  file { '/root/motd':
    ensure => present,
    source => 'puppet:///modules/filedemo/motd',
    owner  => root,
    group  => root,
    mode   => '0644',
  }

  file { '/etc/motd':
    ensure => link,
    target => '/root/motd',
    owner  => 'root',
    group  => 'root',
  }
}
