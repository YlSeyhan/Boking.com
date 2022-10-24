DROP DATABASE IF EXISTS booking;
CREATE DATABASE booking;
USE booking;

CREATE TABLE customers
(
    id INT NOT NULL,
    permission INT NOT NULL,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL,
    phone_number VARCHAR(10) NOT NULL,
    email_address VARCHAR(64) NOT NULL,
    password VARCHAR(64) NOT NULL,

    PRIMARY KEY(id),
    UNIQUE KEY(email_address)
);

CREATE TABLE physical_sites
(
    id INT NOT NULL,
    owner_id INT NOT NULL,
    name VARCHAR(32) NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY(owner_id) REFERENCES customers(id)
);

CREATE TABLE buildings
(
    id INT NOT NULL,
    physical_site INT NOT NULL,
    name VARCHAR(32) NOT NULL,
    description VARCHAR(256),
    price FLOAT(11, 2),

    PRIMARY KEY(id),
    FOREIGN KEY(physical_site) REFERENCES physical_sites(id)
);

CREATE TABLE buildings_pictures
(
    id INT NOT NULL,
    building INT NOT NULL,

    PRIMARY KEY(id),
    FOREIGN KEY(building) REFERENCES buildings(id)
);