SHOW GRANTS FOR CURRENT_USER;

SHOW GRANTS FOR flyway;

CREATE USER 'flyway'@'localhost' IDENTIFIED BY 'flyway';

#GRANT ALL PRIVILEGES ON flyway TO flyway;

GRANT ALL PRIVILEGES ON flyway.* TO 'flyway'@'localhost';