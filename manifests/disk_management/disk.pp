# Class: exercise1::disk_managment
#
#
class exercise1::disk_management::disk {

	exec { "partition sdb1 on ${fqdn}":
		command      => 'echo -e "n\np\n1\n\n\nt\n8e\nw" | fdisk /dev/sdb',
		path        => '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
		#creates     => '/file/created',
		#cwd         => '/path/to/run/from',
		#user        => 'user_to_run_as',
		unless      => 'test -b /dev/sdb1',
		#refreshonly => true,
	}
}