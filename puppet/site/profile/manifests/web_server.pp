class profile::web_server (
  $upstreams = $::app::upstreams
) {
  class { 'nginx': }

  nginx::resource::upstream { 'puppet_rack_app':
    members => $upstreams,
  }

  nginx::resource::vhost { 'web.puppet.example':
    proxy => 'http://puppet_rack_app',
  }
}
