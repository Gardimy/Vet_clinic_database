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
 SELECT COUNT(*) AS never_escape_animals From animals WHERE escape_attempts = 0;
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
