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

firewall {'123 development':
  proto  => 'tcp',
  port   => [8000, 8080, 3000, 4200],
  action => 'accept',
}
