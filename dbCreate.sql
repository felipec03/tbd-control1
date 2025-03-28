-- si existe, se borra
DROP DATABASE IF EXISTS comstore;

CREATE DATABASE comstore
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = false;

\c comstore

CREATE TABLE IF NOT EXISTS PRODUCTO (
    producto_id SERIAL PRIMARY KEY, 
    nombre VARCHAR(150) NOT NULL,
    precio INT NOT NULL
);

CREATE TABLE IF NOT EXISTS VENDEDOR(
    vendedor_id SERIAL PRIMARY KEY;
    nombre VARCHAR(150) NOT NULL
);