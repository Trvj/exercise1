#Class: exercise1
#creating resources for mounting

class exercise1::mount {
	$mount = hiera('exercise1::directories')
	create_resources(file, $mount)
	
	$exercise = hiera('exercise1::mount')
	create_resources(mount, $exercise)
}