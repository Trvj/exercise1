# Class: exercise1::users
#
#
class exercise1::users {
	group { 'Andrews_PGroup':
		gid => '2021',
	}
	# Create a hash from Hiera Data with the Users
	$users = hiera('exercise1::users', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(user, $users)
}

class exercise1::users {
	group { 'Andrews_NPGroup':
		gid => '2020',
	}
	# Create a hash from Hiera Data with the Users
	$users = hiera('exercise1::users', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(user, $users)
}