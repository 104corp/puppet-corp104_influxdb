# Class: corp104_influxdb
# ===========================
#
# Full description of class corp104_influxdb here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'corp104_influxdb':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class corp104_influxdb (
  Optional[String] $http_proxy,
  Boolean $manage_repos,
  String $package_name,
  String $service_ensure,
  String $service_name,
  String $version,
  String $config_file,
  String $stderr_log,
  String $stdout_log,
  String $service_default_conf,
  Optional[String] $service_default_opts,
  Hash $global_config,
  Hash $meta_config,
  Hash $data_config,
  Hash $hinted_handoff_config,
  Hash $cluster_config,
  Hash $retention_config,
  Hash $shard_precreation_config,
  Hash $monitor_config,
  Hash $admin_config,
  Hash $http_config,
  Hash $graphite_config,
  Hash $collectd_config,
  Hash $opentsdb_config,
  Hash $udp_config,
  Hash $continuous_queries_config,
  Optional[Hash] $coordinator_config,
  Hash $subscriber_config,
){
  contain corp104_influxdb::install
  contain corp104_influxdb::config
  contain corp104_influxdb::service

  Class['::corp104_influxdb::install']
  -> Class['::corp104_influxdb::config']
  ~> Class['::corp104_influxdb::service']
}
