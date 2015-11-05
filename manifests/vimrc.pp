class centutils::vimrc {
	file { '/root/.vimrc':
		ensure => 'present',
		source => 'puppet:///modules/centutils/vimrc',
	}
	file { '/etc/skel/.vimrc':
		ensure => 'present',
		source => 'puppet:///modules/centutils/vimrc',
	}
}
