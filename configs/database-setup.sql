-- MariaDB setup used on each Ubuntu LAMP Stack VM
--
-- Run inside the MariaDB shell:  mysql -h localhost -u root -p
--
-- The account is read-only (SELECT only) and may connect from any host,
--
-- To restart the database, use the command:  sudo systemctl restart mariadb
-- 
-- To see the status of the database, use the command: sudo systemctl status mariadb

mysql -h localhost -u root -p

CREATE DATABASE myblog;

CREATE USER username@localhost IDENTIFIED BY 'username';

GRANT ALL PRIVILEGES ON myblog.* TO username@localhost IDENTIFIED BY 'username';

FLUSH PRIVILEGES;

exit;
