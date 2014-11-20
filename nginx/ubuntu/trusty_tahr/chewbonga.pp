$backend_port = '1234'
$frontend_dir = '/usr/share/nginx/html'

include nginx

nginx::resource::vhost {'chewbonga.com':
  server_name         => ['chewbonga.com', 'www.chewbonga.com', '*.chewbonga.com'],
  www_root            => $frontend_dir,
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
