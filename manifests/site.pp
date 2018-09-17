node default {
#file{'/root/README':
#ensure  => file,
#content => ' This is simply a readme file created by kayvan to test file resource under default node ',
#owner   => 'root' ,
#}
}
node 'puppet2.localdomain' {
  include role::master_server
}
node 'puppet-agent.localdomain'{
  include role::agent_server
}
node 'centos-agent.localdomain'{
  include role::agent_server
}

#node /^web/ {
#include role::app_server
#}

#node /^db/ {
#include role::db_server
#}
