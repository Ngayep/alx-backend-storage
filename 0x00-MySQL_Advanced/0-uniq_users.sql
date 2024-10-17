-- Script to create a table 'users' with unique email
-- Table includes an auto-incrementing primary key 'id', and 'email' is unique


CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
	PRIMARY KEY (id)
	);
