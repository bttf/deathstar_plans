include firewall

firewall {'100 ssh':
  proto  => 'tcp',
  port   => 22,
  action => 'accept',
}

firewall {'110 http/https':
  proto  => 'tcp',
  port   => [80, 443],
  action => 'accept',
}
