define users::managed_user (
  $user   = $title,
  $group  = 'wheel',
  $shell  = '/bin/bash',
  $home   = "/home/${title}",
 ) {
user { $title:
ensure => present,
}
file { "/home/${title}":
ensure => directory,
owner => $title,
group => $group,
}
}
