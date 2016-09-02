class practice::exec {
  exec { 'host_entry':
    path    => '/bin',
    command => 'echo "10.0.2.1 webserver01 #mywebserver" >> /etc/hosts',
    unless  => 'grep webserver01 /etc/hosts 2>/dev/null',
  }
}
