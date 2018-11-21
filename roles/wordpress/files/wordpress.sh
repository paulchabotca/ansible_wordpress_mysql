#!/bin/bash
# downloads latest wordpress 
# extracts and moves files from unzipped wordpress directory
# removes wp dir and zip
# makes copy of sample config

# remove default files
rm -rf ./index.html
rm -rf ./50x.html
# download wordpress (wget is default installed ubuntu, should just use curl)
curl -O https://wordpress.org/latest.zip
# ansible will install unzip
unzip latest.zip
mv wordpress/* ./
rm -rf ./wordpress/
rm -rf ./latest.zip
# make a copy of the wp-config-sample.php
cp ./wp-config-sample.php ./wp-config.php
chmod -R 755 ./*