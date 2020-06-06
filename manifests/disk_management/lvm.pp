# Class: exercise1::lvm
#
#
class exercise1::disk_management::lvm {
	require exercise1::disk_management::pv
	# Create a hash from Hiera Data with the Users
	$myUsers = hiera('exercise1::lvm', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(lvm, $lvm)


 	$mydir = hiera('exercise1::directory', {})
	create_resources(file, $mydir)

	mount { '/exercise':
		ensure => mounted,
		pass   => 0,
		dump   => 0,
		fstype => 'xfs',
		options => 'defaults',
		device => '/dev/exercisevg/exercise.fs',
		require => Filesystem['/dev/exercisevg/exercise.fs']
	}
}		