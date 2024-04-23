wget https://wordpress.org/latest.tar.gz &&
tar -xzf latest.tar.gz \
&& mkdir -p www/html/cfm \
&& mv wordpress/* www/html/cfm \
&& rm -rf latest.tar.gz wordpress \
&& chmod -R 777 www \
&& cd www/html/cfm \


# run this after installing wordpress to be able to install plugins/themes directly from the admin panel
# echo "define('FS_METHOD', 'direct');" >> wp-config.php 
