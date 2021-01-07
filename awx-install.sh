# install awx
sed -i -e "s/hosts: all/hosts: localhost/g" ~/awx-repo/installer/install.yml 
cd ~/awx-repo/installer
ansible-playbook -i inventory install.yml
