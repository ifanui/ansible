#!/bin/bash
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get  install -y oracle-java8-installer git -q
sudo useradd  -m -d /var/lib/jenkins jenkins
sudo  -u jenkins bash -c 'mkdir /var/lib/jenkins/.ssh'
sudo -u jenkins bash -c 'cat /tmp/id_rsa.pub >> /var/lib/jenkins/.ssh/authorized_keys'
sudo -u jenkins bash -c 'cat /tmp/id_rsa >> /var/lib/jenkins/.ssh/id_rsa'
chown jenkins:jenkins /var/lib/jenkins/.ssh/authorized_keys
chmod 600 /var/lib/jenkins/.ssh/authorized_keys
chown jenkins:jenkins /var/lib/jenkins/.ssh/id_rsa
chmod 600 /var/lib/jenkins/.ssh/id_rsa
rm -f /tmp/id_r*