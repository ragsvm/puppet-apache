# @summary A short summary of the purpose of this class
# Configure the apache service. 
class apache::service {
  service { "$apache::service_name":
    ensure     => $apache::service_ensure,
    alias      => 'apache_service',
    enable     => $apache::service_enable,
    hasrestart => true,
    hasstatus  => true,
  }
}
