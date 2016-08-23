class ntp (
  $package = $ntp::params::package_name,
  ) inherits ntp::params {

  package { 'ntp':
    ensure => 'installed',
    name   => $package,
  }

}
