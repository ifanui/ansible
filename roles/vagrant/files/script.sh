#!/bin/bash
sudo apt-get  install -y default-jdk default-jre git
sudo useradd  -m -d /var/lib/jenkins jenkins
sudo  -u jenkins bash -c 'mkdir /var/lib/jenkins/.ssh'
sudo -u jenkins bash -c 'cat /tmp/id_rsa.pub >> /var/lib/jenkins/.ssh/authorized_keys'
chown jenkins:jenkins /var/lib/jenkins/.ssh/authorized_keys
chmod 600 /var/lib/jenkins/.ssh/authorized_keys
rm -f /tmp/authorized_keys