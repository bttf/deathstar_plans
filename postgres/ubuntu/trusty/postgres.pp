class { 'postgresql::server':
  postgres_password => 'postgres',
}

# Example database declaration
#
# postgresql::server::db { 'mydatabasename':
#   user     => 'mydatabaseuser',
#   password => postgresql_password('mydatabaseuser', 'mypassword'),
# }
