# == Class: loggly
#
# Full description of class loggly here.
#
# === Parameters
#
# [*token*]
# Your loggly client ID
#
# [*loghost*]
# Your assigned loggly host
#
# [*ensure*]
# Whether you actually want this thing or not
#
# === Examples
#
#  class { loggly:
#    token => '5d482981-00fc-4be7-b911-85779711d553',
#  }
#
# === Authors
#
# Sam Bashton <sam@bashton.com>
#
# === Copyright
#
# Copyright 2013 Bashton Ltd
#
class loggly ($token,
              $loghost = 'logs-01.loggly.com',
              $ensure  = 'present') {

  rsyslog::snippet {'99-loggly':
    ensure  => $ensure,
    content => template('loggly/baseconf.conf'),
  }

}
