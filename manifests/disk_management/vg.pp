# Class: exercise1::vg
#
#
class exercise1::disk_management::vg {
	require exercise1::disk_management::pv
	# Create a hash from Hiera Data with the Users
	$vg = hiera('exercise1::vg', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(volume_group, $vg)
}