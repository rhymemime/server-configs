#!/bin/bash

apt-install nginx-full
apt-install certbot

cp ./nginx.conf /etc/nginx/
cp ./personalsite /etc/nginx/sites-available/
cp ./personalsite.service /etc/systemd/system/

systemctl enable nginx
systemctl start nginx

systemctl enable personalsite
systemctl start personalsite

#run certbot
#clone python repo with site-manager