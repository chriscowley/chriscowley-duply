# == Class duply::install
#
# This class is called from duply for install.
#
class duply::install {
  if 'RedHat' in $facts['osfamily'] {
    include ::epel
  }
  package { $::duply::package_name:
    ensure => present,
  }
}
