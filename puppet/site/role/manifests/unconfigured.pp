class role::unconfigured {
  notify { "The node $::fqdn has not been configured in the hiera hierarchy": }
}
