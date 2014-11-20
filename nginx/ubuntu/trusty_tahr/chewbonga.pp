$backend_port = '1212'
$frontend_dir = '/home/bttf/ember-blog/dist'

include nginx

nginx::resource::vhost {'chewbonga.com':
  ensure        => present,
  server_name   => ['chewbonga.com', 'www.chewbonga.com', '*.chewbonga.com'],
  try_files     => ['$uri', '$uri/', '/index.html?/$request_uri'],
  www_root      => "${frontend_dir}",
}

nginx::resource::location {'dot-git':
  ensure              => present,
  vhost               => 'chewbonga.com',
  location            => '~ /\.git',
  location_custom_cfg => {
    deny              => 'all',
  }
}

nginx::resource::location {'chewbonga.com-api':
  ensure   => present,
  vhost    => 'chewbonga.com',
  location => '~ ^/(entries|users|auth|logout|validate)',
  proxy    => 'http://proxypass',
}

nginx::resource::upstream {'proxypass':
  ensure  => present,
  members => ["localhost:${backend_port}"],
}
