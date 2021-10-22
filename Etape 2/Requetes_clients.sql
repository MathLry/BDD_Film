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
SELECT film.titre_film
FROM film


-- requete n°3
SELECT role.nom_du_role 
FROM role
INNER JOIN role ON role.numero_acteur = acteur.numero_acteur
WHERE acteur.numero_acteur = 4
ORDER BY role.nom_du_role ASC

-- requete n°4

-- requete n°5
SELECT COUNT(DISTINCT nom_acteur) AS nombre_acteur
FROM acteur

-- requete n°6

-- requete n°7

-- requete n°8

-- requete n°9

-- requete n°10
