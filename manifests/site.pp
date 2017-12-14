hiera_include('classes')


$myvhosts = hiera('apache::vhosts', {})
create_resources('apache::vhost', $myvhosts)



$mod = hiera('apache::mod', {})
create_resources('apache::mod', $mod)

$php = hiera('php', {})
create_resources('php', $php)

$node_users = hiera_hash('users')
create_resources(user, $node_users, {})


