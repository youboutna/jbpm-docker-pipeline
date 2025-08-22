
--Configure PostgreSQL

--DROP DATABASE IF EXISTS jbpm_console;
CREATE USER jbpm_console WITH PASSWORD 'admin';
CREATE DATABASE IF NOT EXISTS jbpm_console WITH OWNER jbpm_console ENCODING 'UTF8';

-- Users
INSERT INTO public.jbpm_console.JBPM_USER (USR_ID, USR_PASSWORD, USR_NAME, USR_EMAIL, USR_ACTIVE) VALUES ('admin', '$2a$10$Z5R69bZZgX9z3tU9zjSYyuwE4iAA8Tk58xCnZ8t86Rb3WEg48dNoC', 'Administrator', 'contact@hadratech.com', 'T');

-- Roles
INSERT INTO public.jbpm_console.JBPM_ROLE (ROL_ID, ROL_ACTIVE) VALUES ('ROLE_ADMIN', 'T');
INSERT INTO public.jbpm_console.JBPM_ROLE (ROL_ID, ROL_ACTIVE) VALUES ('ROLE_USER', 'T');

-- User & Roles
INSERT INTO public.jbpm_console.JBPM_USER_ROLE (UR_USER, UR_ROLE) VALUES ('admin', 'ROLE_ADMIN');