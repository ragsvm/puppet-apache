# @summary A short summary of the purpose of this class
# Module for configuring apache
class apache::config {

  file { 'apache_config':
    ensure => $apache::config_ensure,
    path   => $apache::config_path,
    owner  => 'root',
    group  => 'root',
    mode   => '0640',
    source => "puppet:///modules/apache/${osfamily}.conf",

  }
}
