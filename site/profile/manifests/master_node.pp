class profile::master_node{
include dockeragent
dockeragent::node {'puppet2.localdomain':}

}
