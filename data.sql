/* Populate database with sample data. */

INSERT INTO animals VALUES (1, 'Agumon', '2020-02-03', 0, true, 10.23);
INSERT INTO animals VALUES (2, 'Gabumon', '2018-11-15', 2, true, 8);
INSERT INTO animals VALUES (3, 'Pikachu', '2021-01-07', 1, false, 15.04);
INSERT INTO animals VALUES (4, 'Devimon', '2017-05-12', 5, true, 11);

INSERT INTO animals VALUES (5, 'Charmander', '2021-11-15', 0, false, -11, 'unspecified');
INSERT INTO animals VALUES (6, 'Plantmon', '2020-02-08', 2, true, -5.7, 'unspecified');
INSERT INTO animals VALUES (7, ' Squirtle', '1993-04-02', 3, false, -12.13, 'unspecified');
INSERT INTO animals VALUES (8, 'Angemon', '2005-06-12', 1, true, -45, 'unspecified');
INSERT INTO animals VALUES (9, 'Boarmon', '2005-06-07', 7, true, 24.4, 'unspecified');
INSERT INTO animals VALUES (10, 'Blossom', '1998-10-13', 3, true, 17, 'unspecified');
INSERT INTO animals VALUES (11, 'Ditto', '2022-05-14', 4, true, 22, 'unspecified');

--INSERT DATA IN owners
INSERT INTO owners VALUES (001, 'Sam Smith', 34);
INSERT INTO owners VALUES (002, 'Jennifer Orwell', 19);
INSERT INTO owners VALUES (003, 'Bob', 45);
INSERT INTO owners VALUES (004, 'Melody Pond', 77);
INSERT INTO owners VALUES (005, 'Dean Winchester', 14);
INSERT INTO owners VALUES (006, 'Jodie Whittaker', 38);

-- INSERT DATA IN species
INSERT INTO species VALUES (20, 'Pokemon');
INSERT INTO species VALUES (21, 'Digimon');

-- INSERT DATA IN vets
INSERT INTO vets VALUES (11, 'William Tatcher', 45, '2000-04-23');
INSERT INTO vets VALUES (12, 'Maisy Smith', 26, '2019-01-17');
INSERT INTO vets VALUES (13, 'Stephanie Mendez', 64, '1981-05-04');
INSERT INTO vets VALUES (14, 'Jack Harkness', 38, '2008-06-08');

-- INSERT DATA IN specializations
INSERT INTO specializations VALUES (11, 20);
INSERT INTO specializations VALUES (13, 20);
INSERT INTO specializations VALUES (14, 21);

-- Insert data for visits
INSERT INTO visits VALUES (1, 11, '2021-05-24');
INSERT INTO visits VALUES (1, 13, '2020-07-22');
INSERT INTO visits VALUES (2, 14, '2021-02-02');
INSERT INTO visits VALUES (3, 12, '2020-01-05');
INSERT INTO visits VALUES (3, 12, '2020-03-08');
INSERT INTO visits VALUES (3, 12, '2020-05-14');
INSERT INTO visits VALUES (4, 13, '2021-05-04');
INSERT INTO visits VALUES (5, 14, '2021-02-24');
INSERT INTO visits VALUES (6, 12, '2019-12-21');
INSERT INTO visits VALUES (6, 11, '2020-08-10');
INSERT INTO visits VALUES (6, 12, '2021-04-07');
INSERT INTO visits VALUES (7, 13, '2019-09-29');
INSERT INTO visits VALUES (8, 14, '2020-10-03');
INSERT INTO visits VALUES (8, 14, '2020-11-04');
INSERT INTO visits VALUES (9, 12, '2019-01-24');
INSERT INTO visits VALUES (9, 12, '2019-05-15');
INSERT INTO visits VALUES (9, 12, '2020-02-27');
INSERT INTO visits VALUES (9, 12, '2020-08-03');
INSERT INTO visits VALUES (10, 13, '2020-05-24');
INSERT INTO visits VALUES (10, 11, '2021-01-11');
