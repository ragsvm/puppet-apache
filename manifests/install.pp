# @summary 
#
# Install the basic apache module
#
# @example
#   include apache::install
class apache::install (
  $install_ensure  = $::apache::params::install_ensure,
  $install_package = $::apache::params::install_package,

) inherits apache::params { 
  package { "$install_package":
    ensure => $install_ensure,
  }
}
