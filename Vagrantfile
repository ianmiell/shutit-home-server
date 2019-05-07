# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "4096"
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
  end
  # Function to check whether VM was already provisioned
  def provisioned?(vm_name='default', provider='virtualbox')
    File.exist?(".vagrant/machines/#{vm_name}/#{provider}/action_provision")
  end
  config.vm.synced_folder "/space", "/space", owner: "imiell", group: "imiell" if provisioned?
  config.vm.provision "shell", inline: <<-SHELL
    adduser --disabled-password --gecos "" imiell
    apt-get -y update
    apt-get install -y git virtualbox-guest-dkms python-pip
    pip install shutit
    git clone https://github.com/ianmiell/shutit-home-server
    cd shutit-home-server
    shutit run -l DEBUG
  SHELL
end
