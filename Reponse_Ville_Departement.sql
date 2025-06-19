/* 1 Ville les plus peuplées */
/*SELECT ville_nom, ville_population_2012
FROM villes_france_free
ORDER BY ville_population_2012 DESC
LIMIT 10*/

/* 2 Obtenir la liste des 50 villes ayant la plus faible superficie */
/*SELECT ville_nom, ville_surface
FROM villes_france_free
ORDER BY ville_surface ASC
LIMIT 50*/

/* 3 Obtenir la liste des départements d’outres-mer, c’est-à-dire ceux dont le numéro de département commencent par “97” */
/*SELECT ville_nom
FROM villes_france_free
WHERE ville_departement LIKE '97%'*/

/* 4 Obtenir le nom des 10 villes les plus peuplées en 2012, ainsi que le nom du département associé */
/*SELECT ville_nom, ville_population_2012, departement_nom
FROM villes_france_free, departement
WHERE villes_france_free.ville_departement = departement.departement_id
ORDER BY ville_population_2012 DESC
LIMIT 10*/

/* 5 Obtenir la liste du nom de chaque département, associé à son code et du nombre de commune au sein de ces département, en triant afin d’obtenir en priorité les départements qui possèdent le plus de communes */
/*SELECT departement_nom, departement_code, ville_commune
FROM villes_france_free, departement
WHERE villes_france_free.ville_departement = departement.departement_id
ORDER BY ville_commune DESC
LIMIT 10*/

/* 6 Obtenir la liste des 10 plus grands départements, en terme de superficie */
/*SELECT departement_nom,SUM(ville_surface) AS superficie_totale
FROM villes_france_free, departement
WHERE villes_france_free.ville_departement = departement.departement_id
GROUP BY departement_code
LIMIT 10*/

/* 7 Compter le nombre de villes dont le nom commence par “Saint” */
/*SELECT COUNT(ville_nom) AS Nombre_Ville_begin_SAINT
FROM villes_france_free
WHERE ville_nom LIKE 'SAINT%'*/

/* 8 Obtenir la liste des villes qui ont un nom existants plusieurs fois, et trier afin d’obtenir en premier celles dont le nom est le plus souvent utilisé par plusieurs communes */
/*SELECT ville_nom, COUNT(v_id) AS nb_occurrences
FROM villes_france_free
GROUP BY ville_nom
HAVING COUNT(ville_commune) > 1
ORDER BY nb_occurrences DESC;*/

/* 9 Obtenir en une seule requête SQL la liste des villes dont la superficie est supérieur à la superficie moyenne */
/*SELECT ville_nom, ville_surface
FROM villes_france_free
WHERE ville_surface > (
	SELECT AVG(ville_surface)
	FROM villes_france_free
	)*/

/*10. Obtenir la liste des départements qui possèdent plus de 2 millions d’habitants */
/*SELECT departement_nom, SUM(ville_population_2012) 
FROM villes_france_free
/*WHERE villes_france_free.ville_departement = departement.departement_id  Jointure traditionnelle*/
/*INNER JOIN departement ON villes_france_free.ville_departement = departement.departement_id  Jointure avec Inner Join
GROUP BY ville_departement
HAVING SUM(ville_population_2012) > 2000000
ORDER BY departement_nom DESC */

/* 11. Remplacez les tirets par un espace vide, pour toutes les villes commençant par “SAINT-” (dans la colonne qui contient les noms en majuscule) */
UPDATE villes_france_free
SET ville_nom = REPLACE(ville_nom, '-', ' ')
WHERE ville_nom LIKE 'SAINT-%';


