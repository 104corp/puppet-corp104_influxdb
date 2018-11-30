class corp104_influxdb::repo::apt inherits corp104_influxdb {
  #downcase operatingsystem
  $_operatingsystem = downcase($::operatingsystem)

  $key = {
    'id'      => '05CE15085FC09D18E99EFB22684A14CF2582E0C5',
    'source'  => 'https://repos.influxdata.com/influxdb.key',
    'options' => "http-proxy=\"${corp104_influxdb::http_proxy}\"",
  }

  apt::source { 'repos.influxdata.com':
    location => "https://repos.influxdata.com/${_operatingsystem}",
    release  => $::lsbdistcodename,
    repos    => 'stable',
    key      => $key,
    include  => { 'src' => true },
  }
}
