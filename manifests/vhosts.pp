# @summary A short summary of the purpose of this defined type.
# This is a defined type for setting up virtual hosts
# A description of what this defined type does
#
# @example
#   apache::vhosts { 'namevar': }
define apache::vhosts (
  Integer   $port,
  String[1] $subdomain,
  String    $admin,
  String    $docroot,  
) {
  file { "${docroot}":
    ensure => directory,
    owner  => $apache::vhosts_owner,
    group  => $apache::vhosts_group,
  }

  file { "${apache::vhosts_dir}/${subdomain}.conf":
    ensure  => file,
    owner   => $apache::vhosts_owner,
    group   => $apache::vhosts_group,
    content => epp('apache/vhosts.conf.epp', {'port' => $port, 'subdomain' => $subdomain, 'admin' => $admin, 'docroot' => $docroot}), 
    notify  => Service["${apache::service_name}"],
  }
  
}
