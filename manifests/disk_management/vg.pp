# Class: exercise1::vg
#
#
class exercise1::disk_management::vg {
	# Create a hash from Hiera Data with the Users
	$myUsers = hiera('exercise1::vg', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(vg, $vg)
}