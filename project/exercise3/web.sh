#!/bin/bash

sudo yum install wget unzip httpd -y 
sudo sudo systemctl start httpd
sudo systemctl enable httpd
sudo wget https://www.tooplate.com/zip-templates/2127_little_fashion.zip
sudo unzip -o 2127_little_fashion.zip
sudo cp -r 2127_little_fashion.zip/* /var/www/html/
sudo systemctl restart httpd