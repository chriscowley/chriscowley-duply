# == Class duply::params
#
# This class is meant to be called from duply.
# It sets variables according to platform.
#
class duply::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'duply'
    }
    'RedHat', 'Amazon': {
      $package_name = 'duply'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
