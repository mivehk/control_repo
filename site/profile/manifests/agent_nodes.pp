class profile::agent_nodes{
include dockeragent
dockeragent::node {'puppet-agent.localdomain':}
dockeragent::node {'centos-agent.localdomain':}
}
