# Class: exercise1
#
#
class exercise1 {
	include exercise1::packages
	include exercise1::users
	include exercise1::disk_management::fs
	include exercise1::mount
	include exercise1::nfs
}