/*Queries that provide answers to the questions from all projects.*/

 SELECT * FROM animals;
 SELECT * FROM animals WHERE name LIKE '%mon';
 SELECT * FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
 SELECT * FROM animals WHERE neutered = true AND escape_attempts < 3
 SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
 SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
 SELECT * FROM animals WHERE neutered = true;
 SELECT * FROM animals WHERE name <> 'Gabumon';
 SELECT * FROM animals WHERE  weight_kg BETWEEN 10.4 and 17.3;

 SELECT * FROM animals;
 ALTER TABLE animals ADD COLUMN species VARCHAR(200);
 START TRANSACTION;
 UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
 UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
 SELECT * FROM animals;
 DELETE FROM animals;
 SELECT * FROM animals;
  ROLLBACK;
 COMMIT;
 SELECT * FROM animals;
 START TRANSACTION;
 DELETE FROM animals WHERE date_of_birth > '2022-01-01';
 SAVEPOINT gdm;
 UPDATE animals SET weight_kg = weight_kg * -1;
 ROLLBACK TO SAVEPOINT gdm;
 SELECT * FROM animals;
 UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
 SELECT * FROM animals;
 COMMIT;
 SELECT COUNT(*) AS total_animals FROM animals;
 SELECT COUNT(*) AS never_escaped_animals FROM animals WHERE escape_attempts = 0;
 SELECT AVG(weight_kg) AS average_weight_kg FROM animals;
 SELECT CASE WHEN neutered = 1 THEN 'Neutered' ELSE 'Not Neutered' END AS neutered_status, 
 SUM(escape_attempts) AS total_escape_attempts
 FROM animals
 GROUP BY neutered_status
 ORDER BY total_escape_attempts DESC
 LIMIT 1;

SELECT
    MIN(weight_kg) AS min_weight_kg,
    MAX(weight_kg) AS max_weight_kg
FROM animals;

SELECT
    AVG(escape_attempts) AS average_escape_attempts
FROM animals
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';


desc owners;
desc species;
desc animals;
ALTER TABLE animals DROP PRIMARY KEY;
desc animals;
ALTER TABLE animals MODIFY COLUMN id INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD CONSTRAINT fk_species FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD CONSTRAINT fk_owner FOREIGN KEY (owner_id) REFERENCES owners(id);
desc animals;
desc owners;
SELECT * FROM owners;
desc species;
SELECT* FROM species;

UPDATE animals
SET species_id = 
    CASE
        WHEN name LIKE '%mon' THEN 20
        ELSE 21                          
    END;
UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Sam Smith')
WHERE name = 'Agumon';

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Jennifer Orwell')
WHERE name IN ('Gabumon', 'Pikachu');

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Bob')
WHERE name IN ('Devimon', 'Plantmon');

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Melody Pond')
WHERE name IN ('Charmander', 'Squirtle', 'Blossom');

UPDATE animals
SET owner_id = (SELECT id FROM owners WHERE full_name = 'Dean Winchester')
WHERE name IN ('Angemon', 'Boarmon');

SELECT * FROM animals;

SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';

SELECT animals.name FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';

SELECT owners.full_name, animals.name FROM owners LEFT JOIN animals ON owners.id = animals.owner_id;

SELECT animals.name
FROM animals
JOIN species ON animals.species_id = species_id
JOIN owners ON animals.owner_id = owners_id
WHERE species.name = 'Digimon' AND owners.full_name = 'Jennifer Orwell';

SELECT animals.name FROM animals
JOIN owners ON animals.owner_id = owners.id
WHERE owners.full_name = 'Dean Winchester' AND animals.name NOT LIKE '%mon';

SELECT species.name, COUNT(animals.id) AS animal_count FROM species
LEFT JOIN animals ON species.id = animals.species_id
GROUP BY species.name;

