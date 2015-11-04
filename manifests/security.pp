class centutils::security {
	file { '/usr/local/sbin/chksec' :
		ensure	=>	'present',
		source	=>	'puppet:///modules/centutils/chksec',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'750',
	}
}
