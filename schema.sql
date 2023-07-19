/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL(12,2),
    species_id INT,
    owner_id INT,
    FOREIGN KEY (species_id) REFERENCES species(id),
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);

CREATE TABLE owners (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100) NOT NULL,
  age INT
);

CREATE TABLE species (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);
