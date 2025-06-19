/****** Script for SelectTopNRows command from SSMS  ******/

/* 1. Quelles sont les tables de la base ventes? */
/*USE Ventes;
GO
EXEC sp_tables 
    @table_type = "'TABLE'";*/

/* 2. Afficher le contenu de chaque tale de la  base ventes ? */
/*USE ventes;
GO
EXEC sp_msforeachtable 
    @command1 = N'
        PRINT ''Affichage de la table ?'';
        SELECT * 
        FROM ?;
    ';*/

/*3. Combien de ligne existe dans chaque table ? */


/*4. Afficher les noms des sociétés de la table client.*/
/*SELECT NomSociete as 'Noms des sociétés'
FROM Client
ORDER BY NomSociete ASC */

/*5. Afficher le nom des produits triés par ordre alphabétique croissant.*/
/*SELECT NomProduit as 'Noms des produits'
FROM Produit
ORDER BY NomProduit ASC */

/* 6. En plus des noms des sociétés afficher les contacts ainsi que les adresses de la  table client */
/*SELECT NomSociete as 'Noms des sociétés', ContactNom, ContactTitre, Adresse, CodePostal, Ville, Pays
FROM Client*/

/*  7. Quel est le nom de la société du nom de contact Aria Cruz? */
/*SELECT NomSociete as 'Noms des sociétés'
FROM Client
WHERE ContactNom = 'Aria Cruz' */

/* 8. Indiquer la société, numéro de téléphone et le fax  du nom de contact 'Ann Devon'.*/
SELECT NomSociete as 'Nom de société', Fax, Telephone
FROM Client
WHERE ContactNom = 'Ann Devon'