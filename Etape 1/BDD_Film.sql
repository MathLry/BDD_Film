CREATE TABLE film (
 numero_film int NOT NULL,
 titre_film varchar(20) NOT NULL,
 date_de_sortie date NOT NULL,
 duree int NOT NULL,
 genre VARCHAR(20) NOT NULL,
 numero_realisateur int NOT NULL,
 
 PRIMARY KEY (numero_film),
 FOREIGN KEY (numero_realisateur) REFERENCES realisateur(numero_realisateur)
);

CREATE TABLE role (
 nom_du_role varchar(14) NOT NULL,
 numero_acteur int NOT NULL,
 numero_film int NOT NULL,
 
 PRIMARY KEY (numero_acteur, numero_film),
 FOREIGN KEY (numero_acteur) REFERENCES acteur(numero_acteur),
 FOREIGN KEY (numero_film) REFERENCES film(numero_film)
);

CREATE TABLE acteur (
 numero_acteur int NOT NULL,
 prenom_acteur varchar(14) NOT NULL,
 nom_acteur varchar(16) NOT NULL,
 date_de_naissance date NOT NULL,
 nation_acteur VARCHAR(16) NOT NULL,
 
 PRIMARY KEY (numero_acteur)
);

CREATE TABLE realisateur (
 numero_realisateur int NOT NULL,
 prenom_realisateur varchar(14) NOT NULL,
 nom_realisateur varchar(16) NOT NULL,
 nation_realisateur VARCHAR(16) NOT NULL,
 
 PRIMARY KEY (numero_realisateur)
);

CREATE TABLE place (
 numero_place int NOT NULL,
 categorie_de_la_place int NOT NULL,
 
 PRIMARY KEY (numero_place),
 FOREIGN KEY (categorie_de_la_place) REFERENCES categorie_place(categorie_de_la_place)
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
 numero_film int NOT NULL,
 categorie_de_la_seance int NOT NULL,
 
 PRIMARY KEY (numero_seance),
 FOREIGN KEY (categorie_de_la_seance) REFERENCES categorie_seance(categorie_de_la_seance),
 FOREIGN KEY (numero_film) REFERENCES film(numero_film)
);

CREATE TABLE tarif (
 prix int NOT NULL,
 categorie_de_la_seance int NOT NULL,
 categorie_de_la_place int NOT NULL,
 
 PRIMARY KEY (categorie_de_la_seance, categorie_de_la_place),
 FOREIGN KEY (categorie_de_la_seance) REFERENCES categorie_seance(categorie_de_la_seance),
 FOREIGN KEY (categorie_de_la_place) REFERENCES categorie_place(categorie_de_la_place)
);

CREATE TABLE categorie_seance (
 categorie_de_la_seance int NOT NULL,
 type_seance int NOT NULL,
 
 PRIMARY KEY (categorie_de_la_seance)
);

CREATE TABLE reservation (
 nom_spectateur varchar(14) NOT NULL,
 numero_seance int NOT NULL,
 numero_place int NOT NULL,
 
 PRIMARY KEY (numero_seance, numero_place),
 FOREIGN KEY (numero_seance) REFERENCES seance(numero_seance),
 FOREIGN KEY (numero_place) REFERENCES place(numero_place)
);