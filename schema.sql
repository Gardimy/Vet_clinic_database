/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
	id INT PRIMARY KEY,
    name varchar(200) NOT NULL,
	date_of_birth DATE,
	escape_attempts INT,
	neutered BOOLEAN,
	weight_kg DECIMal(12,2)
);
