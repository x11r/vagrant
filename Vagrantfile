
Vagrant.configure(2) do |config|

  config.vm.box = "centos6"
  config.vm.hostname = "centos6"
  config.vm.box_check_update = false
  config.vm.network "private_network", ip: "192.168.10.10"
  config.vm.boot_timeout = 600

  # config.vm.synced_folder "../data", "/vagrant_data"
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  #config.vm.provision "shell", :path => "provision_init.sh" :privileged => false
  #config.vm.provision :shell, :path => "./provision-script/basic-setting.sh",:privileged   => true
  config.vm.provision :shell, :path => "provision_init.sh",:privileged   => true

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
