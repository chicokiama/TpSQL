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


/*4. Afficher les noms des soci�t�s de la table client.*/
/*SELECT NomSociete as 'Noms des soci�t�s'
FROM Client
ORDER BY NomSociete ASC */

/*5. Afficher le nom des produits tri�s par ordre alphab�tique croissant.*/
/*SELECT NomProduit as 'Noms des produits'
FROM Produit
ORDER BY NomProduit ASC */

/* 6. En plus des noms des soci�t�s afficher les contacts ainsi que les adresses de la  table client */
/*SELECT NomSociete as 'Noms des soci�t�s', ContactNom, ContactTitre, Adresse, CodePostal, Ville, Pays
FROM Client*/

/*  7. Quel est le nom de la soci�t� du nom de contact Aria Cruz? */
/*SELECT NomSociete as 'Noms des soci�t�s'
FROM Client
WHERE ContactNom = 'Aria Cruz' */

/* 8. Indiquer la soci�t�, num�ro de t�l�phone et le fax  du nom de contact 'Ann Devon'.*/
SELECT NomSociete as 'Nom de soci�t�', Fax, Telephone
FROM Client
WHERE ContactNom = 'Ann Devon'