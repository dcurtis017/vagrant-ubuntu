class users {
	#try doing this with variables
	user { 'curtis':
		ensure => 'present',
		groups => ['sudo', 'sysadmins'],
		home => '/home/curtis',
		managehome => true,
		password => '$6$lY2Gp3Cr$zNrUB7T3yibUF/gWn5cTQ0fNv7MUmx/DZuw3E7I..Vh9tITG28BtgvXJPU4Gm4Z/9oNvlbX24KzQ9Ib1QH1B9.',
		shell => '/bin/bash',
		require => Group['sysadmins'],
	}#password is test
	group { 'sysadmins':
		ensure => 'present',
	}
	file { '/home/curtis':
		ensure => directory,
		owner => 'curtis',
		group => 'curtis',
		mode => 755,
		source => 'puppet:///modules/users/curtis',
		recurse => remote,
		require => User['curtis'],
	}
	
	#ssh_authorized_key { '<username>':
	#	ensure => 'present',
	#	user => '<username>',
	#	type => 'rsa',
	#	key => '<paste raw public key>',
	#}	
}