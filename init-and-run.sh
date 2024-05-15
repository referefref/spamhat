#!/bin/sh

# Wait for MariaDB to be ready
until mysql -hmariadb -uspamhat -ppassword -e "SELECT 1" &> /dev/null; do
  echo "Waiting for MariaDB..."
  sleep 5
done

# Initialise the database
mysql -hmariadb -uroot -proot_password <<EOF
CREATE DATABASE IF NOT EXISTS spamhat;
CREATE USER IF NOT EXISTS 'spamhat'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON spamhat.* TO 'spamhat'@'%';
FLUSH PRIVILEGES;
EOF

# Execute the main script
exec /root/spamhat/runpot.sh
