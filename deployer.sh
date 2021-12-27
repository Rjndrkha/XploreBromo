# Create user deployer with root account
adduser deployer

# Append (-a) a secondary group (-G) "www-data" to user "deployer"
usermod -a -G www-data deployer

# See groups assigned to user "deployer"
groups deployer

# Add ACL permission in /var/www

# check setfacl exists
which setfacl

# If doesn't exist:
sudo apt-get install -y acl

# Inspect current ACL's
getfacl /var/www

# Set current and default ACL's for /var/www
sudo setfacl -Rm g:www-data:rwx,d:g:www-data:rwx /var/www