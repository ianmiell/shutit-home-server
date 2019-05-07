# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder "/space", "/space", owner: "imiell", group: "imiell"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "4096"
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
  end
  #
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    adduser --disabled-password --gecos "" imiell
    apt-get -y update
    apt-get install -y git virtualbox-guest-dkms python-pip
    pip install shutit
    git clone https://github.com/ianmiell/shutit-home-server
    cd shutit-home-server
    shutit run
  SHELL
end
