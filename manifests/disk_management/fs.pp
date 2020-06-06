# Class: exercise1::fs
#
#
class exercise1::disk_management::fs {
	require exercise1::disk_management::lvm
	# Create a hash from Hiera Data with the Users
	$fs = hiera('exercise1::fs', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(fs, $fs)
 	
 	$ = hiera('exercise1::directory', {})
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