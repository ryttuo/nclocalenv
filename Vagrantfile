# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "ncbox"
    config.vm.box_url = "http://45.55.219.154/vagrantboxes/ncbox.box"
    config.vm.network "private_network", ip: "192.168.77.17"
    config.vm.hostname = "nclocal"
    #config.vm.synced_folder ".", "/var/www/tmi", :mount_options => ["dmode=777", "fmode=666"]
    config.vm.synced_folder ".", "/var/www", type: 'nfs'
    
    #Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }

    #config.ssh.private_key_path = "~/.ssh/id_rsa"
    #config.ssh.forward_agent = true

    #ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
    #config.vm.provision 'shell', inline: "echo #{ssh_pub_key} >> /root/.ssh/authorized_keys"
    #config.vm.provision 'shell', inline: "echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys", privileged: false
	
    #config.vm.provision :shell, privileged: false, path: "bootstrap.sh"
    config.vm.provision "shell", path: "bootstrap.sh"

end
