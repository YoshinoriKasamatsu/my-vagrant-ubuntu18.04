# -*- mode: ruby -*-
# vi: set ft=ruby :

# you're doing.
Vagrant.configure("2") do |config|
  # main
  config.vm.define "main" do |main|
    # Set Image
    main.vm.box = "ubuntu/bionic64"
    main.disksize.size = "100GB"
    main.vm.provider "virtualbox" do |vb|
      vb.memory = 8192
      #vb.gui = true
      vb.gui = false
      vb.customize [
        "modifyvm", :id,
        "--vram", "256",
        "--accelerate3d", "off",
      ]
    end
    main.vm.network "private_network", ip: "10.56.0.11", virtualbox__intnet: "local"
    main.vm.network "private_network", ip: "10.33.0.11"
    main.vm.network "public_network"
    main.vm.provision "shell", inline: <<-SHELL
      mkdir /mnt/shared #=> root
      mount -t vboxsf vagrant /mnt/shared #=> root
    SHELL
    main.vm.provision :shell, :path => "./shell/useradd.sh"
    main.vm.provision :shell, :path => "./shell/install_python.sh"
    main.vm.provision :shell, :path => "./shell/install_pip.sh"
    main.vm.provision :shell, :path => "./shell/install_ansible.sh"
    main.vm.provision :shell, :path => "./shell/install_ubuntu_desktop.sh"
    main.vm.provision :shell, :path => "./shell/install_virtualbox_additions.sh"
    main.vm.provision :shell, :path => "./shell/install_chrome.sh"
    main.vm.provision :shell, :path => "./shell/install_nodejs.sh"
    main.vm.provision :shell, :path => "./shell/install_vscode.sh"
  end
end
