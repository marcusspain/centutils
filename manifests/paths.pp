class centutils::paths {
	file { '/etc/profile.d/centutils-paths.sh' :
		ensure	=>	'present',
		source 	=>	'puppet:///modules/centutils/centutils-paths.sh',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'644',
	}
}
