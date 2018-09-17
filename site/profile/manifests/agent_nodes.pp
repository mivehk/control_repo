class profile::agent_nodes{
include dockeragent
dockeragent::node {'puppet-agent.localdomain':}
dockeragent::node {'centos-agent.localdomain':}
host{'puppet-agent.localdomain':
ensure => present,
ip    => '192.168.18.138',
}
host{'centos.localdomain':
ensure => present,
ip    =>'192.168.18.136',
}
}
