# Class: exercise1::fs
#
#
class exercise1::disk_management::fs {
	require exercise1::disk_management::lvm
	# Create a hash from Hiera Data with the Users
	$myUsers = hiera('exercise1::fs', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(fs, $fs)
}