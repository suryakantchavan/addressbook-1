#! /bin/bash
sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install maven -y
if [ -d "addressbook-1" ]
then
    echo "repo is already existing just cloning the new changes"
    git pull origin
else
    git clone https://github.com/suryakantchavan/addressbook-1.git
fi
cd /home/ec2-user/addressbook-1
mvn package        