
# config.vm.provision "shell", :path => "provision_init.sh" :privileged => false
# provision_init.sh
sudo service iptables stop
sudo chkconfig iptables off
sudo yum --enablerepo=remi install -y

sudo rpm -ivh https://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo sed -i -e "s/enabled=1/enabled=0/" /etc/yum.repos.d/epel.repo
sudo rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
#sudo rpm -ivh http://yum.postgresql.org/9.2/redhat/rhel-6-x86_64/pgdg-redhat92-9.2-7.noarch.rpm

sudo yum install -y tmux vim-enhanced curl nmap redis php56 php56-php-pdo

#
# @ii
#
