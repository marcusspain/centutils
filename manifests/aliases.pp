class centutils::aliases {
	file { '/etc/profile.d/centutils-aliases.sh' :
		ensure	=>	'present',
		source	=>	'puppet:///modules/centutils/centutils-aliases.sh',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'644',
	}
}
