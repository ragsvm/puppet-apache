# @summary A short summary of the purpose of this class
# Class for specing OS and other parameters
class apache::params {

  $install_ensure = present
  
  case $::osfamily {
    'Redhat':{
      $install_package = 'httpd' 
    }
    'Debian':{
      $install_package = 'apache2' 
    }
    'Default':{
      fail("$::osfamily is not supported by this module") 
    }

  }

}
