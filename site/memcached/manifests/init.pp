class memcached {

package {'memcached':
   ensure => present,
}

file {'/etc/sysconfig/memcached':
   ensure => file,
   owner => 'root',
   group => 'root',
   mode => '0644',
   #port => "11211",
   #user => "memcached",
   #maxconn => "96",
   #cachesize => "32",
   #options => "",
}

service {'memcached':
   ensure => present,
   enable => true,
   require => File['/etc/sysconfig/memcached'],
}

}
