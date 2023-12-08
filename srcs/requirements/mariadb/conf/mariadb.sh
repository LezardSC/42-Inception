# -- service mysql start; --starting MySQL
mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;" #-- Create a database if doesn't exist with the name of the env variable sent by docker-compose.yml
mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';" #-- Create a user if he doesn't exist with the password in .env
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';" # -- give root access to User
mysql -e "FLUSH PRIVILEGES;" #-- refresh MySQL
mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown #--reload MySQL

# -- exec mysqld_safe --execute mysql