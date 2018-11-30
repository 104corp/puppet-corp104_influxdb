# puppet module corp104_influxdb
[![Build Status](https://travis-ci.org/104corp/puppet-corp104_influxdb.svg?branch=master)](https://travis-ci.org/104corp/puppet-corp104_influxdb)


#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with corp104_influxdb](#setup)
    * [Beginning with corp104_influxdb](#beginning-with-corp104_influxdb)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

The corp104_influxdb module installs, configures, and manages the corp104_influxdb service across a range of operating systems and distributions.

## Setup

### Beginning with corp104_influxdb

`include '::corp104_influxdb'` is enough to get you up and running.

## Usage

All parameters for the ntp module are contained within the main `::corp104_influxdb` class, so for any function of the module, set the options you want. See the common usages below for examples.

### Install and enable corp104_influxdb

```puppet
include '::corp104_influxdb'
```

### Install specially node version. default '8.8.0'

```puppet
class { 'corp104_influxdb':
  node_version => '6.11.5',
}
```

### Set default node version.

```puppet
class { 'corp104_influxdb':
  node_version => '6.11.5',
  set_default  => true,
}
```

### Download package to Use a Proxy

```puppet
class { 'corp104_influxdb':
  http_proxy   => 'http://change.proxy.com:3128',
  node_version => '6.11.5',
}
```

## Reference

### Classes

#### Public classes

* corp104_influxdb: Main class, includes all other classes.

#### Private classes

* corp104_influxdb::install Handles the packages.
* corp104_influxdb::install::node Handles the node packages.
* corp104_influxdb::config Handles the config.


## Limitations

This module cannot guarantee installation of corp104_influxdb versions that are not available on  platform repositories.

This module is officially [supported](https://forge.puppetlabs.com/supported) for the following Java versions and platforms:

## Development

Puppet modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great. Please follow our guidelines when contributing changes.

For more information, see our [module contribution guide.](https://docs.puppetlabs.com/forge/contributing.html)

### Contributors

To see who's already involved, see the [list of contributors.](https://github.com/puppetlabs/puppetlabs-ntp/graphs/contributors)
