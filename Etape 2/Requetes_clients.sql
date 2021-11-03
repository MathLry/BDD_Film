-- requete n°1
SELECT DISTINCT acteur.numero_acteur, seance.date_de_la_seance 
FROM seance
INNER JOIN film ON seance.numero_film = film.numero_film
INNER JOIN role ON role.numero_film = film.numero_film
INNER JOIN acteur ON acteur.numero_acteur = role.numero_acteur
WHERE acteur.numero_acteur = 1

-- requete n°2
SELECT film.titre_film AS list_film, prix, horaire
FROM film
INNER JOIN seance ON seance.numero_film = film.numero_film
INNER JOIN tarif ON tarif.categorie_de_la_seance = seance.categorie_de_la_seance
WHERE seance.horaire >= '18:00:00' AND tarif.prix <= '10'

-- requete n°3
SELECT acteur.numero_acteur, role.nom_du_role
FROM role
INNER JOIN acteur ON role.numero_acteur = acteur.numero_acteur
WHERE acteur.numero_acteur = (
	SELECT numero_acteur
	FROM acteur
	WHERE numero_acteur = 4
)
ORDER BY role.nom_du_role ASC

-- requete n°4
SELECT film.numero_film, seance.date_de_la_seance AS date, seance.horaire AS horaire
FROM seance
INNER JOIN film ON film.numero_film = seance.numero_film
WHERE film.numero_film = 7
ORDER BY seance.date_de_la_seance DESC, seance.horaire ASC

-- requete n°5
SELECT COUNT(DISTINCT nom_acteur) AS nombre_acteur
FROM acteur

-- requete n°6
SELECT titre_film, COUNT(film.numero_film) AS 'Séances programmées'
FROM film
INNER JOIN seance ON film.numero_film = seance.numero_film
GROUP BY film.numero_film
HAVING COUNT(film.numero_film) = 2

-- requete n°7
SELECT acteur.nom_acteur AS Acteur, realisateur.prenom_realisateur || ' ' || realisateur.nom_realisateur AS Réalisateur
FROM realisateur
INNER JOIN film ON realisateur.numero_realisateur = film.numero_realisateur
INNER JOIN role ON film.numero_film = role.numero_film
INNER JOIN acteur ON role.numero_acteur = acteur.numero_acteur
WHERE realisateur.numero_realisateur IN (
	film.numero_realisateur
)
ORDER BY Acteur ASC

-- requete n°8
SELECT prenom_acteur || ' ' || nom_acteur AS Acteur, COUNT(role.numero_acteur) AS 'Nombre de rôle réalisé'
FROM acteur
INNER JOIN role ON role.numero_acteur = acteur.numero_acteur
GROUP BY role.numero_acteur
ORDER BY COUNT(role.numero_acteur) DESC

-- requete n°9
CREATE VIEW IF NOT EXISTS liste_film_acteur AS
SELECT prenom_acteur || ' ' || nom_acteur AS Acteur, COUNT(seance.numero_seance) AS 'Nombre de séances'
FROM acteur
INNER JOIN role ON role.numero_acteur = acteur.numero_acteur
INNER JOIN film ON film.numero_film = role.numero_film
INNER JOIN seance ON film.numero_film = seance.numero_film
WHERE film.numero_film = role.numero_film
GROUP BY acteur.numero_acteur;

-- requete n°10
CREATE TRIGGER IF NOT EXISTS trigger_categorie_speciale
UPDATE ON reservation
INNER JOIN place ON place.numero_place = reservation.numero_place
INNER JOIN categorie_place ON place.categorie_de_la_place = categorie_place.categorie_de_la_place
WHEN (reservation.numero_place = 1 AND NOT NULL)
BEGIN
	reservation.catégorie_de_la_place := :'E'	-:'D'
	DBMS_OUTPUT.PUT_LINE('La catégorie de la place 1 est maintenant en :' || reservation.categorie_de_la_place);
END;

-- requete n°10
CREATE TRIGGER IF NOT EXISTS trigger_categorie_speciale
AFTER INSERT ON reservation
FOR EACH ROW
WHEN (new.numero_place = 1)
BEGIN
	UPDATE reservation
    SET catégorie_de_la_place = 'E'
    WHERE reservation.numero_place = 1;
END;