#!/bin/bash
sudo yum install httpd -y
sudo systemctl enable httpd
sudo systemctl start httpd
echo "Welcome to RedHat Webserver" >> /var/www/html/index.html