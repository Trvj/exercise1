# Class: exercise1::pv
#
#
class exercise1::disk_management::pv {
	require exercise1::disk_management::disk
	# Create a hash from Hiera Data with the Users
	$pv = hiera('exercise1::pv', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(physical_volume, $pv)
}