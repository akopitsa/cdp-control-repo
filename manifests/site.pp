hiera_include('classes')
$myvhosts = hiera('apache::vhosts', {})
create_resources('apache::vhost', $myvhosts)
