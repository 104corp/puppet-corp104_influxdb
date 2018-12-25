class corp104_influxdb::config inherits corp104_influxdb {
  file { $corp104_influxdb::config_file:
    ensure  => file,
    content => template("${module_name}/influxdb.conf.erb"),
    notify  => Service['influxdb'],
    require => Package['influxdb'],
  }

  file { $corp104_influxdb::service_default_conf:
    ensure  => file,
    content => template("${module_name}/influxdb_default.erb"),
    notify  => Service['influxdb'],
    require => Package['influxdb'],
  }
}
