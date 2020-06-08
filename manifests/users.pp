# Class: exercise1::users
#
#
class exercise1::users {
	group { 'Andrews_Group':
		gid => '2021',
	}
	# Create a hash from Hiera Data with the Users
	$users = hiera('exercise1::users', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(user, $users)
}