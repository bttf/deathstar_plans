include firewall

firewall {'999 drop all':
  action => 'drop',
}
