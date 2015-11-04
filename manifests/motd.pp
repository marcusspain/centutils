class centutils::motd {

	include cron

	file { '/usr/local/sbin' :
		ensure	=>	"directory",
	}

	file { '/usr/local/sbin/updatemotd' :
		ensure	=>	'present',
		source	=>	'puppet:///modules/centutils/updatemotd',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'750',
	}

	file { '/usr/local/sbin/systemstats' :
		ensure	=>	'present',
		source	=>	'puppet:///modules/centutils/systemstats',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'750',
	}

	file { '/usr/local/sbin/setbanner' :
		ensure	=>	'present',
		source	=>	'puppet:///modules/centutils/setbanner',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'750',
	}

	file { '/usr/local/sbin/cvpi.banner' :
		ensure	=>	'present',
		source	=>	'puppet:///modules/centutils/cvpi.banner',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'640',
	}

	file { '/usr/local/sbin/pinzon.banner' :
		ensure	=>	'present',
		source	=>	'puppet:///modules/centutils/pinzon.banner',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'640',
	}

	file { '/usr/local/sbin/diversity.banner' :
		ensure	=>	'present',
		source	=>	'puppet:///modules/centutils/diversity.banner',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'640',
	}

	file { '/usr/local/sbin/gorillacanon.banner' :
		ensure	=>	'present',
		source	=>	'puppet:///modules/centutils/gorillacanon.banner',
		owner	=>	'root',
		group	=>	'root',
		mode	=>	'640',
	}

	cron::job { 'updatemotd':
    	minute      => '*/5',
    	hour        => '*',
    	date        => '*',
    	month       => '*',
    	weekday     => '*',
    	user        => 'root',
    	command     => '/usr/local/sbin/updatemotd',
    	environment => [ 'MAILTO=root' ];
	}
}
