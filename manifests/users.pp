# Class: exercise1::users
#creating resources for groups and users
#
class exercise1::users {
	$groups = hiera('exercise1::groups', {})
	create_resources(group, $groups)
 
	
	# Create a hash from Hiera Data with the Users
	$users = hiera('exercise1::users', {})
	# With Create Resource Converts a hash into a set of resources
	create_resources(user, $users)
 }