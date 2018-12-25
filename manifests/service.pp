class corp104_influxdb::service inherits corp104_influxdb {
  service { 'influxdb':
    ensure => $corp104_influxdb::service_ensure,
    name   => $corp104_influxdb::service_name,
  }
}