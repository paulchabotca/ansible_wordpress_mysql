# Ansible Wordpress Mysql Configuration
---
This ansible setup configures an ubuntu server with wordpress and mysql. The ubuntu server was setup in virtualbox with my public key for ssh.

## Inventory
base ubuntu 14.05 server configured with my public key
[wordpress_01]

## Playbook

### run_updates
Updates the ubuntu server using apt

### install_nginx
Installs nginx with php-fpm. 

### install_wordpress
downloads wordpress from https://wordpress.org/latest

### update_wordpress
checks wordpress version and updates accordingly.

### install_mysql
installs and configured mysql server.

### create_database
configures a database with information provided

### configure_ssl
installs and configures certbot for Lets Encrypt certificate

### stop_nginx
stops nginx

### start_nginx
starts nginx

### reload_nginx
reloads nginx

### stop_mysql
stops nginx

### start_mysql
starts nginx

### reload_mysql
reloads nginx
