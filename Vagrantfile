# -*- mode: ruby -*-
# vi: set ft=ruby :

def configure_with_puppet config
  config.vm.provision :shell, path: 'scripts/bootstrap-puppet.sh'
end

Vagrant.configure(2) do |config|
  config.vm.box = 'bento/ubuntu-15.04'

  2.times do |n|
    app_box_name = 'app%0.2d' % (n + 1)
    ip = 101 + n
    config.vm.define app_box_name do |app|
      app.vm.network :private_network, ip: "10.11.12.#{ip}"
      app.vm.hostname = app_box_name
      configure_with_puppet app
    end
  end

  config.vm.define "web" do |web|
    web.vm.network :private_network, ip: "10.11.12.10"
    web.vm.hostname = 'web'
    configure_with_puppet web
    web.vm.network :forwarded_port, guest: 80, host: 8282
  end
end
