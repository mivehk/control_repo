node default {
file{'/root/README':
ensure  => file,
content => ' This is simply a readme file created by kayvan to test file resource under default node ',
owner   => 'root' ,
}
}
node 'puppet2.localdomain' {
  include role::master_server
}
