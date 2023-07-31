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

CREATE TABLE vets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL ,
    age INT,
    date_of_graduation DATE
);

CREATE TABLE specializations (
    vet_id INT REFERENCES vets(id),
    species_id INT REFERENCES species(id),
    PRIMARY KEY (vet_id, species_id)
);

CREATE TABLE visits (
    animal_id INT REFERENCES animals(id),
    vet_id INT REFERENCES vets(id),
    visit_date DATE,
    PRIMARY KEY (animal_id, vet_id, visit_date)
);


-- Query for week2 day1 Databasr=e performence audit:
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

CREATE INDEX ON visits (animal_id);
CREATE INDEX ON visits (vet_id);
CREATE INDEX ON owners (email);