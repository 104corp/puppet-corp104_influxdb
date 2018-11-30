class corp104_influxdb::repo::yum {

  $_operatingsystem = $::operatingsystem ? {
    'CentOS' => downcase($::operatingsystem),
    default  => 'rhel',
  }

  yumrepo { 'repos.influxdata.com':
    ensure   => present,
    descr    => "InfluxDB Repository - ${::operatingsystem} \$releasever",
    baseurl  => "https://repos.influxdata.com/${$_operatingsystem}/\$releasever/\$basearch/stable",
    enabled  => '1',
    gpgcheck => '1',
    gpgkey   => 'https://repos.influxdata.com/influxdb.key',
  }

}