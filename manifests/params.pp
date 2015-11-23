# Class: drbd::params
#
# This class defines default parameters used by the main module class drbd
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to drbd class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
class drbd::params {
  # install package depending on major version
  if $::osfamily == 'redhat' or $::operatingsystem == 'amazon' {
    $package_name = 'kmod-drbd84'
  } elsif $::osfamily == 'debian' {
    $package_name = 'drbd8-utils'
  }
}
