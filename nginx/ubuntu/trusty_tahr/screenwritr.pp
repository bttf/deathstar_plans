$frontend_dir = '/home/bttf/screenwritr/dist'
$app_name = 'screenwritr.88mph.io'

include nginx

nginx::resource::vhost {$app_name:
  ensure        => present,
  server_name   => [$app_name, "www.$app_name"],
  try_files     => ['$uri', '$uri/', '/index.html?/$request_uri'],
  www_root      => $frontend_dir,
}

nginx::resource::location {'dot-git':
  ensure              => present,
  vhost               => $app_name,
  location            => '~ /\.git',
  location_custom_cfg => {
    deny              => 'all',
  }
}

