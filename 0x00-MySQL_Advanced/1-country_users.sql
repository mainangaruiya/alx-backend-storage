--create table users with
--id, email, name ,country
CREATE TABLE IF NOT EXISTING users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
	country ENUM ('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);