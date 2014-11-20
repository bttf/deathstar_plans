include firewall

firewall {'000 accept all icmp requests':
  proto  => 'icmp',
  action => 'accept',
}

firewall {'001 accept all to lo':
  proto   => 'all',
  iniface => 'lo',
  action  => 'accept',
}

firewall {'002 accept related established':
  proto  => 'all',
  state  => ['RELATED', 'ESTABLISHED'],
  action => 'accept',
}
