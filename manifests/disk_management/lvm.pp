# Class: exercise1::lvm
#
#
class exercise1::disk_management::lvm {
	require exercise1::disk_management::pv
	# Create a hash from Hiera Data with the Users
	$lvm = hiera('exercise1::lvm', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(logical_volume, $lvm)
}