CREATE TABLE film (
 numero_film int NOT NULL,
 titre_film varchar(20) NOT NULL,
 date_de_sortie date NOT NULL,
 duree int NOT NULL,
 genre VARCHAR(20) NOT NULL,
 PRIMARY KEY (numero_film)
);


CREATE TABLE acteur (
 numero_acteur int NOT NULL,
 nom_acteur varchar(14) NOT NULL,
 prenom_acteur varchar(16) NOT NULL,
 date_de_naissance date NOT NULL,
 nation_acteur VARCHAR(16) NOT NULL,
 PRIMARY KEY (numero_acteur)
);


CREATE TABLE realisateur (
 numero_realisateur int NOT NULL,
 nom_realisateur varchar(14) NOT NULL,
 prenom_realisateur varchar(16) NOT NULL,
 nation_realisateur VARCHAR(16) NOT NULL,
 PRIMARY KEY (numero_realisateur)
);


CREATE TABLE numero_place (
 numero_place int NOT NULL,
 PRIMARY KEY (numero_place)
);


CREATE TABLE categorie_place (
 categorie_de_la_place int NOT NULL,
 type_place int NOT NULL,
 PRIMARY KEY (categorie_de_la_place)
);


CREATE TABLE seance (
 numero_seance int NOT NULL,
 date_de_la_seance date NOT NULL,
 horaire TIME NOT NULL,
 PRIMARY KEY (numero_seance)
);


CREATE TABLE categorie_seance (
 categorie_de_la_seance int NOT NULL,
 type_seance int NOT NULL,
 PRIMARY KEY (categorie_de_la_seance)
);