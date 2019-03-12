#!/bin/bash
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install  oracle-java8-installer -yq
sudo apt-get  install  mc git -yq
sudo useradd  -m -d /var/lib/jenkins jenkins
sudo  -u jenkins bash -c 'mkdir /var/lib/jenkins/.ssh'
sudo -u jenkins bash -c 'cat /tmp/id_rsa.pub >> /var/lib/jenkins/.ssh/authorized_keys'
sudo -u jenkins bash -c 'cat /tmp/id_rsa >> /var/lib/jenkins/.ssh/id_rsa'
chown jenkins:jenkins /var/lib/jenkins/.ssh/authorized_keys
chmod 600 /var/lib/jenkins/.ssh/authorized_keys
chown jenkins:jenkins /var/lib/jenkins/.ssh/id_rsa
chmod 600 /var/lib/jenkins/.ssh/id_rsa
rm -f /tmp/id_r*