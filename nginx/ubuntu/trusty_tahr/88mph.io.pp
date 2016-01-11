$root_dir = '/home/bttf/88mph.io'
$site_name = '88mph.io'

include nginx

nginx::resource::vhost {$site_name:
  ensure         => present,
  server_name    => [$site_name, "www.$site_name"],
  listen_options => 'default_server',
  www_root       => $root_dir,
}

nginx::resource::location {'dot-git':
  ensure              => present,
  vhost               => $site_name,
  location            => '~ /\.git',
  location_custom_cfg => {
    deny              => 'all',
  }
}
