class {'::mongodb::server':
  auth => true
}

mongodb::db {'chewbonga':
  user     => 'chewie',
  password => 'hancaneatafatone'
}
