class profile::agent_nodes{
include dcokeragent
dockeragent::node {'puppet-agent.localdomain':}
dockeragent::node {'centos-agent.localdomain':}
}
