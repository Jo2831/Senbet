CREATE DATABASE IF NOT EXISTS senbet_db;
CREATE USER IF NOT EXISTS 'senbet_user'@'localhost' IDENTIFIED BY 'senbet';
GRANT ALL PRIVILEGES ON `senbet_db`.* TO 'senbet_user'@'localhost';
FLUSH PRIVILEGES;