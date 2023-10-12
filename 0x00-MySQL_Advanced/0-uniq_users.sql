-- creates a table users with follwing fields
-- id, email, name
CREATE TABLE IF NOT EXISTS users (
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT'
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255)
);