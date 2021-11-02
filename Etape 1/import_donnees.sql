INSERT INTO acteur (numero_acteur, prenom_acteur, nom_acteur, date_de_naissance, nation_acteur) -- format de la la date :'AAAA-MM-JJ'
VALUES (1, 'Al', 'PACINO', '1940-04-25', 'USA'),
(2, 'Marlon', 'BRANDO', '1924-04-03', 'USA'),
(3, 'Robert', 'DE NIRO', '1943-08-17', 'USA'),
(4, 'Mark', 'HAMILL', '1951-09-25', 'USA'),
(5, 'Carrie', 'FISHER', '1956-10-21', 'USA'),
(6, 'Harison', 'FORD', '1942-07-13', 'USA'),
(7, 'Zoe', 'SALDANA', '1978-06-19', 'GB'), -- Grande Bretagne
(8, 'Sam', 'WORTHINGTON', '1976-08-02', 'GB'),
(9, 'Sigourney', 'WEAVER', '1949-09-08', 'USA'),
(10, 'Michael Andrew', 'FOX', '1961-06-09', 'CAN'), -- Canada
(11, 'Christopher', 'LLOYD', '1938-10-22', 'USA'),
(12, 'Lea', 'THOMPSON', '1961-05-31', 'USA'),
(13, 'Kate', 'WINSLET', '1975-10-05', 'GB'),
(14, 'Leonardo', 'DICAPRIO', '1974-11-11', 'USA'),
(15, 'Billy', 'ZANE', '1966-02-24', 'USA'),
(16, 'Keanu', 'REEVES', '1964-09-02', 'USA'),
(17, 'Carrie-Anne', 'MOSS', '1967-08-21', 'CAN'),
(18, 'Laurence', 'FISHBURNE', '1961-07-31', 'USA'),
(19, 'Colin', 'FARRELL', '1976-05-31', 'IRL'),
(20, 'Bridget', 'MOYNAHAN', '1971-04-28', 'USA');


INSERT INTO realisateur (numero_realisateur, prenom_realisateur, nom_realisateur, nation_realisateur)
VALUES (1, 'Francis', 'FORD CAPPOLA', 'USA'),
(2, 'Irvin', 'KERSHNER', 'USA'),
(3, 'James', 'Cameron', 'CAN'),
(4, 'Robert', 'ZEMECKIS', 'USA'),
(5, 'Lana & Lilly', 'WASHOWSKI', 'USA'),
(6, 'Richard', 'MARQUAND', 'GB'),
(7, 'Roger', 'DONALDSON', 'AU');


INSERT INTO film (numero_film, titre_film, date_de_sortie, duree, genre, numero_realisateur) -- format de la date : 'AAAA-MM-JJ'
VALUES (1, 'Le Parain', '1972-10-18', 175, 'Drame, Mafia, Policier, Criminel', 1),
(2, 'Star Wars, épisode V', '1980-08-29', 124, 'Action, Aventure, Science-Fiction, Fantasy', 2),
(3, 'Avatar', '2009-12-16', 162, 'Action, Aventure, Science-Fiction, Fantasy', 3),
(4, 'Retour vers le futur', '1985-10-30', 176, 'Comedie, Aventure, Science-Fiction, Fantasy, Romance', 4),
(5, 'Titanic', '1998-01-07', 194, 'Drame, Catastrophe, Drame historique, Romance', 3),
(6, 'Matrix', '1999-06-23', 136, 'Action, Aventure, Science-Fiction, Fantasy', 5),
(7, 'Star Wars VI', '1983-05-12', 134, 'Action, Aventure, Science-Fiction, Fantasy', 6),
(8, 'La Recrue', '2003-01-31', 115, 'Espionnage', 7);


INSERT INTO role (nom_du_role, numero_acteur, numero_film)
VALUES ('Michael Corleone', 1, 1),  -- Le parrain
('Vito Corleone', 2, 1),
('Vito Corleone', 3, 1),

('Luke Skywalker', 4, 2),   -- Star Wars v
('Leia Organa', 5, 2),
('Han Solo', 6, 2),

('Neytiri', 7, 3),   -- Avatar
('Jake Sully, and Tommy', 8, 3),
('Grace', 9, 3),

('Marty McFly', 10, 4),    -- Retour vers le futur
('Dr. Emmett Brown', 11, 4),
('Lorraine Baines', 12, 4),

('Rose DeWitt Bukater', 13, 5),   -- Titanic
('Jack Dawson', 14, 5),
('Caledon Hockley', 15, 5),

('Neo', 16, 6),    -- Matrix
('Trinity', 17, 6),
('Morpheus', 18, 6),

('Luke Skywalker', 4, 7),   -- Star Wars VI
('Leia Organa', 5, 7),
('Han Solo', 6, 7),

('Walter Burke', 1, 8),   -- La Recrue
('James Clayton', 19, 8),
('Layla Moore', 20, 8);


INSERT INTO place (numero_place, categorie_de_la_place)
VALUES (1, 'A'),
(2, 'A'),
(3, 'A'),
(4, 'A'),
                            
(6, 'B'),
(7, 'B'),
(10, 'B'),
(11, 'B'),

(5, 'C'),
(9, 'C'),
(8, 'C'),
(12, 'C'),

(13, 'D'),
(14, 'D'),
(15, 'D'),
(16, 'D');

-- Voici le plan de la salle :
--  1   2   3   4
--  5   6   7   8
--  9   10  11  12
--  13  14  15  16


INSERT INTO categorie_place (categorie_de_la_place, type_place)
VALUES ('A', 'Plein tarif'),
('B', 'Tarif reduit'),
('C', 'Tarif etudiant'),
('D', 'Tarif moins de 16 ans'),
('E', 'Catégorie spéciale');


INSERT INTO seance (numero_seance, date_de_la_seance, horaire, numero_film, categorie_de_la_seance) -- format de l'horaire : 'hh:mm:ss'
VALUES (9, '2008-10-18', '13:10:00', 1, 1),
(7, '2009-08-20', '23:20:00', 2, 2),
(3, '2012-02-21', '19:30:00', 3, 1),
(12, '2012-02-23', '13:30:00', 3, 1),
(43, '2015-10-30', '10:00:00', 4, 3),
(16, '2020-01-07', '14:40:00', 5, 5),
(23, '2017-06-23', '16:30:00', 6, 4),
(25, '2016-12-14', '11:50:00', 7, 1),
(18, '2017-06-23', '16:30:00', 2, 2),
(13, '2016-12-16', '19:00:00', 7, 3),
(6, '2016-12-16', '11:00:00', 7, 3),
(2, '2016-12-16', '09:00:00', 7, 3),
(17, '2016-12-16', '21:30:00', 7, 3),
(8, '2016-12-16', '23:00:00', 7, 3),
(4, '2003-06-11', '14:30:00', 8, 4),
(1, '2003-06-11', '16:00:00', 8, 3),
(11, '2016-12-18', '18:30:00', 7, 5);


INSERT INTO categorie_seance (categorie_de_la_seance, type_seance)
VALUES (1, '2D'), -- VF
(2, '3D'), -- VF
(3, '4D'), -- VF
(4, 'VO'),
(5, 'VOSTFR');


INSERT INTO tarif (prix, categorie_de_la_seance, categorie_de_la_place)
VALUES (11.00, 1, 'A'),
(9.00, 1, 'B'),
(7.00, 1, 'C'),
(5.90, 1, 'D'),

(12.60, 2, 'A'),
(10.60, 2, 'B'),
(8.00, 2, 'C'),
(6.90, 2, 'D'),

(13.20, 3, 'A'),
(11.20, 3, 'B'),
(8.60, 3, 'C'),
(7.50, 3, 'D'),

(11.10, 4, 'A'),
(9.10, 4, 'B'),
(7.10, 4, 'C'),
(6.00, 4, 'D'),

(11.05, 5, 'A'),
(9.05, 5, 'B'),
(7.05, 5, 'C'),
(5.95, 5, 'D'),

(10.99, 1, 'E'),
(8.99, 1, 'E'),
(7.99, 1, 'E'),
(5.89, 1, 'E');


INSERT INTO reservation (nom_spectateur, numero_seance, numero_place)
VALUES ('Calvin', 7, 2),
('Wuckert', 7, 6),
('Thiel', 16, 9),
('Deckow', 3, 12),
('Johns', 7, 16),
('Wiza', 23, 1),
('Lemke', 43, 8),
('Schuster', 16, 9),
('Mueller', 9, 10);