-- requete n°1
SELECT DISTINCT seance.date_de_la_seance 
FROM seance
INNER JOIN seance ON seance.numero_film = film.numero_film
INNER JOIN role ON role.numero_film = film.numero_film
INNER JOIN acteur ON acteur.numero_acteur = role.numero_acteur
WHERE numero_acteur IN (
    SELECT numero_acteur
    WHERE numero_acteur = 1
)

-- requete n°2
SELECT film.titre_film AS list_film, prix, horaire
FROM film
INNER JOIN seance ON seance.numero_film = film.numero_film
INNER JOIN tarif ON tarif.categorie_de_la_seance = seance.categorie_de_la_seance
WHERE seance.horaire >= '18:00:00' AND tarif.prix <= '10'

-- requete n°3
SELECT role.nom_du_role
FROM role
INNER JOIN acteur ON role.numero_acteur = acteur.numero_acteur
WHERE acteur.numero_acteur = (
	SELECT numero_acteur
	FROM acteur
	WHERE numero_acteur = 4
)
ORDER BY role.nom_du_role ASC

-- requete n°4
SELECT seance.date_de_la_seance AS date, seance.horaire AS horaire
FROM seance
INNER JOIN film ON film.numero_film = seance.numero_film
WHERE film.numero_film = 7
ORDER BY seance.horaire ASC, seance.date_de_la_seance DESC

-- requete n°5
SELECT COUNT(DISTINCT nom_acteur) AS nombre_acteur
FROM acteur

-- requete n°6


-- requete n°7


-- requete n°8


-- requete n°9


-- requete n°10
