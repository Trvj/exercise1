#Class Exercise1
#NFS Server
#
class exercise1::manifests::nfsserver {
	$nfss = lookup(exercise1::nfsserver)
	nfss { $nfss:
		server_enabled => true,
	}
}