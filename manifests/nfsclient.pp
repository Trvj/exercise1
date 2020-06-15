#Class Exercise1 
#NFS Client 
#
class exercise1::manifests::nfsclient {
	require exercise1::manifests::nfsserver
	$nfsc = lookup(exercise1::nfsclient)
	nfsc { $nfsc:
		client_enabled => true,
	}
	nfsserver::nfsclient::exercise
}
