# Class: duply
# ===========================
#
# Full description of class duply here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class duply (
  $package_name = $::duply::params::package_name,
) inherits ::duply::params {

  # validate parameters here

  class { '::duply::install': }
  -> class { '::duply::config': }
  -> Class['::duply']
}
