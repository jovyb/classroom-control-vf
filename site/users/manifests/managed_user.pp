define users::managed_user (
$group = 'wheel',
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
