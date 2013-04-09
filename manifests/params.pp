# /etc/puppet/modules/hadoop/manifests/params.pp

class hadoop::params {

	$java_home = $::hostname ? {
		default => "/opt/java/jdk1.7.0_03",
	}

	$version = $::hostname ? {
		default			=> "1.1.1",
	}
        
	$master = $::hostname ? {
		default			=> "namenode1",
	}
        
	$slaves = $::hostname ? {
		default			=> ["datanode1", "datanode2", "datanode3"] 
	}
	$hdfsport = $::hostname ? {
		default			=> "8020",
	}

	$replication = $::hostname ? {
		default			=> "3",
	}

	$jobtrackerport = $::hostname ? {
		default			=> "8021",
	}
	$hadoop_base = $::hostname ? {
		default			=> "/opt/hadoop",
	}
	$hdfs_path = $::hostname ? {
		default			=> "/home/hduser/hdfs",
	}
}
