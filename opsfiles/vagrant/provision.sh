#!/bin/bash

# set -x

zypper_install_ansible()
{
  ### update zypper
  # zypper update

  ### install ansible
  zypper install -y ansible
}

### install ansible
zypper_install_ansible
ansible --version


### ansible-playbook 
playbook_dir='/develop/try-opensuse/opsfiles/vagrant/playbook'

# ansible-playbook -i ${playbook_dir}/vagrant --extra-vars "hosts=opensuse" ${playbook_dir}/webserver.yml
ansible-playbook -i ${playbook_dir}/vagrant  ${playbook_dir}/webserver.yml


rm -rfv ${playbook_dir}/webserver.retry
# memcached -h | head -n2
