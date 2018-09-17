class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@puppet2.localdomain':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzk3UEdIO+yx40g8SX2mMazu6z5/NUUs8vGrj4cqADNOV6uhTYGEO/jXf/K4PdWJ5NgXFyGB/c7BLy6tGao7HUkJq2uWYs0T7yWKkfIEdvHISrr7XCsvocNMMrxYioxyLVyA6SoTnZ4cyda45+FLezY2Wr4lAfCK/A6bUFOQgVkuZsxIuULJOr1OO3+D9pdTiNByMchA+ln6N4/blzW09yDrcQD0N2WiheT7h7GqwZpJ1hp2PzRVyFQNpcoieIu7nD8yRRKWjKEOwRdEagIoxcMN/jp9qJG7ti/Hd7YbNJhi1N1tacW9GSkbx8MwS40ZDf3HHvPc3c4+GqlxSQ5v6r',
	}  
}
