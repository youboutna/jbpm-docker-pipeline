
--Configure PostgreSQL

DROP DATABASE IF EXISTS jbpm_console;
CREATE USER jbpm_console WITH PASSWORD 'admin';
CREATE DATABASE jbpm_console WITH OWNER jbpm_console ENCODING 'UTF8';