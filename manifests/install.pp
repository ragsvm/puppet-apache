# @summary 
#
# Install the basic apache module
#
# @example
#   include apache::install
class apache::install { 
  package { "$apache::install_package":
    ensure => $apache::install_ensure,
  }
}
