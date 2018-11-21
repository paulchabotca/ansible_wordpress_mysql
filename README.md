# Ansible Wordpress Mysql Configuration
---
This ansible setup configures an ubuntu server with nginx, php-fpm and mysql. It also downloads the latest wordpress, creates a db for it and configures it ready for install. The ubuntu server was setup in virtualbox with my public key for ssh. This playbook took approximately 5 hours as I had to learn ansible.

## Inventory
base ubuntu 14.05 server configured with my public key
[ tor.www01.ubuntutarget ]

## Playbook
The playbook has 4 roles.

### common
common commands, checks server status and updates the server

### webservers
installs/enables/starts nginx with php-fpm

### dbservers
installs/enables/starts mysql and configures root password set in vars, removes anon users and test db

### wordpress
installs unzip, uses bash script to download latest.zip from wordpress.org, extracts and configures wp-config.php, uses salt.sh to grab a fresh salt from wordpress.org salt gen.