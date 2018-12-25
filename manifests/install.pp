class corp104_influxdb::install inherits corp104_influxdb {

  if $corp104_influxdb::manage_repos {

    case $::osfamily {
      'Debian': {
        require corp104_influxdb::repo::apt
      }
      'RedHat': {
        require corp104_influxdb::repo::yum
      }
      default: {
        fail("Unsupported managed repository for osfamily: ${::osfamily}, operatingsystem: ${::operatingsystem},\
        module ${module_name} currently only supports managing repos for osfamily RedHat and Debian")
      }
    }

  }

  package { 'influxdb':
    ensure => $corp104_influxdb::version,
    name   => $corp104_influxdb::package_name,
  }

}
