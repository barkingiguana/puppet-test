class role::dev_server inherits role::base {
  $app_listen_address = "localhost:8021"
  class { 'profile::web_server':
    upstreams => [ $app_listen_address ],
  }
}
