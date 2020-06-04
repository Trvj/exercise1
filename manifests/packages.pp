# Class: exercise1
#
#
class exercise1::packages {
	$packages = lookup(exercise1::packages)
	package { $packages:
		ensure => installed,
	}
}