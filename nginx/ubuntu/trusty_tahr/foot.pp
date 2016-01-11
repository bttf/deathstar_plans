$backend_port = '1214'
$app_name = 'foot.88mph.io'

include nginx

nginx::resource::vhost {$app_name:
  ensure        => present,
  server_name   => [$app_name, "www.$app_name"],
  proxy         => 'http://foot-proxy',
}

nginx::resource::location {'dot-git':
  ensure              => present,
  vhost               => $app_name,
  location            => '~ /\.git',
  location_custom_cfg => {
    deny              => 'all',
  }
}

nginx::resource::upstream {'foot-proxy':
  ensure  => present,
  members => ["localhost:${backend_port}"],
}
