# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "ubuntu/xenial64"
    config.vm.box_check_update = false

    config.vm.network "forwarded_port", guest: 8080, host: 8080
    config.vm.network "private_network", ip: "192.168.55.10"

    config.ssh.forward_agent = true

    config.vm.synced_folder "./training", "/vagrant", mount_options: ['rw', 'vers=3', 'tcp', 'nolock'], type: :nfs

    config.vm.provider "virtualbox" do |vb|
        vb.cpus = "2"
        vb.memory = "4096"
    end

    config.vm.provision "shell" do |s|
        s.path = "provision.sh"
    end
end
