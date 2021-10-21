-- ATTENTION ! j'ai inversé "prénom" et "nom" pour plus de clarté, donc voir si ca passe ou si ca casse la table...
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
(17, 'Carrie-Anne', 'Moss', '1967-08-21', 'CAN'),
(18, 'Laurence', 'FISHBURNE', '1961-07-31', 'USA');


-- ATTENTION ! j'ai inversé "prénom" et "nom" pour plus de clarté, donc voir si ca passe ou si ca casse la table...
INSERT INTO realisateur (numero_realisateur, prenom_realisateur, nom_realisateur, nation_realisateur)
VALUES (1, 'Francis', 'FORD CAPPOLA', 'USA'),
(2, 'Irvin', 'KERSHNER', 'USA'),
(3, 'James', 'Cameron', 'CAN'),
(4, 'Robert', 'ZEMECKIS', 'USA'),
(5, 'Lana & Lilly', 'WASHOWSKI', 'USA');


INSERT INTO film (numero_film, titre_film, date_de_sortie, duree, genre, numero_realisateur) -- format de la date : 'AAAA-MM-JJ'
VALUES (1, 'Le Parain', '1972-10-18', 175, 'drame, Mafia, Policier, Criminel', 1),
(2, 'Star Wars, épisode V', '1980-08-29', 124, 'Action, Aventure, Science-Fiction, Fantasy', 2),
(3, 'Avatar', '2009-12-16', 162, 'Action, Aventure, Science-Fiction, Fantasy', 3),
(4, 'Retour vers le futur', '1985-10-30', 176, 'Comedie, Aventure, Science-Fiction, Fantasy, Romance', 4),
(5, 'Titanic', '1998-01-07', 194, 'Drame, Catastrophe, Drame historique, Romance', 3),
(6, 'Matrix', '1999-06-23', 136, 'Action, Aventure, Science-Fiction, Fantasy', 5);


INSERT INTO role (nom_du_role, numero_acteur, numero_film)
VALUES ('Acteur principal', 1, 1),  -- Le parrain
('Actrice secondaire', 2, 1),
('Acteur secondaire', 3, 1),

('Acteur principal', 4, 2),   -- Star Wars    
('Acteur secondaire', 5, 2),
('Acteur secondaire', 6, 2),

('Actrice principale', 7, 3),   -- Avatar
('Acteur secondaire', 8, 3),
('Actrice secondaire', 9, 3),

('Acteur principal', 10, 4),    -- Retour vers le futur
('Acteur principal', 11, 4),
('Actrice secondaire', 12, 4),

('Actrice principal', 13, 5),   -- Titanic
('Acteur principal', 14, 5),
('Acteur secondaire', 15, 5),

('Acteur principal', 16, 6),    -- Matrix
('Actrice principale', 17, 6),
('Acteur secondaire', 18, 6);


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
VALUES ('A', 'Devant'),
('B', 'Au milieu'),
('C', 'Sur les Bords'),
('D', 'Au fond');


INSERT INTO seance (numero_seance, date_de_la_seance, horaire, numero_film, categorie_de_la_seance) -- format de l'horaire : 'hh:mm:ss'
VALUES (9, '18/10/1972', '13:10:00', 1, Film),
(7, '20/08/1980', '23:20:00', 2, Film),
(3, '21/02/2005', '19:30:00', 3, Film),
(43, '30/10/1985', '10:00:00', 4, Film),
(16, '07/01/1998', '14:40:00', 5, Film),
(23, '23/06/1999', '16:30:00', 6, Film);


INSERT INTO categorie_seance (categorie_de_la_seance, type_seance)
VALUES (Film, 2D),
(Film, 2D),
(Film, 2D),
(Film, 2D),
(Film, 2D),
(Film, 2D),
(Film, 2D);


INSERT INTO tarif (prix, categorie_de_la_seance, categorie_de_la_place)
VALUES (10 ||''|| ' €', Film, 'A'),
(12 ||''|| ' €', Film, 'B'),
(15 ||''|| ' €', Film, 'D'),
(11 ||''|| ' €', Film, ' B'),
(14 ||''|| ' €', Film, 'D'),
(10 ||''|| ' €', Film, 'C'),
(5 ||''|| ' €', Film, 'A');

INSERT INTO reservation (nom_spectateur, numero_seance, numero_place)
VALUES (Calvin, 7, 2),
(Wuckert, 7, 6),
(Thiel, 16, 9),
(Deckow, 3, 12),
(Johns, 7, 16),
(Wiza,23, 1),
(Lemke, 43, 8),
(Schuster, 16, 9),
(Mueller, 9, 10);