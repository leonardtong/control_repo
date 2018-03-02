class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC2BPL1gQhfk/T/nzf7i9M+mQw+wlxfSmKZTJ2Tel13ZU5u1h+ilxm/5oBe1v/b+RG9vIRUEONK3AZu27mLcHPhreYZZpWRBbuDTMpei5cIe4AXk6rOl91mCsdb7CzmbLIlqNb0jNIfnOFietkqDUj7NyzYlIToTc4mWKw3FWs1jlPNrSApHDM9sNpLAkDDDzv/Oy1sEJmf4ubE7x2ksLKzFOEqYckPYDG6EKdVQPVM9xwHwYXEXdbnK5kxSfxpOOkIhhMrGhmo4zriJOqkcjDrDhtXL6n5guvx8SWhdVN6lJYF123wKC4x7ude0HCHMJZdeJLwh2R0Bb9cEqyOawFl',
	}  
}
