

# Conception de la base de donnée 


## Etape 1 



`Gargote_Plats`(**id**,`nom_plat`,`prix_plat`,`categorie_plat`)


```SQL
CREATE TABLE Gargote_plats
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
    nom_plat VARCHAR(50) NOT NULL,
    prix_plat INTEGER NOT NULL CHECK (prix_plat > 0),
    categorie_plat VARCHAR(50) NOT NULL
);



INSERT INTO  Gargote_Plats(nom_plat,  categorie_plat,prix_plat) VALUES 
(
    'Romazava','Plat malagasy',7000),
    ('Ravitoto sy henakisoa','Plat malagasy',8000),
    ('Akoho sy voanio','Plat malagasy',8500),

    ('Mi Sao','Plat Chinois',6000),

    ('Soupe Chinoise','Soupe',5000),

    ('Mofo gasy (les 4)','Dessert et gouter',1000),

    ('Ranon ampango','Boisson',500);






-- lister les plats avec leurs prix 
SELECT nom_plat,  categorie_plat,prix_plat FROM gargote_plats ORDER BY prix_plat,nom_plat;


-- ajouter tri 

SELECT nom_plat,categorie_plat,prix_plat FROM gargote_plats ORDER BY prix_plat DESC;


```


-- piege categorie on peut ecrire n importe quelle categorie q on veut 


## etape 2 

``` SQL 

-- Active: 1792133652074@@127.0.0.1@5432@gargote@public
CREATE TABLE Gargote_categorie_plats
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
    libelle VARCHAR(150) NOT NULL
);

INSERT INTO Gargote_categorie_plats(libelle) VALUES 
('Plat malagasy'),('Plats Chinois'),('Soupe'),('Dessert et gouter'),('Boisson');


-- ajouter colonne a la table 

ALTER TABLE gargote_plats ADD COLUMN id_categorie_plat INTEGER  ;


-- remplir les id_categorie_plat 

SELECT plats.nom_plat,plats.categorie_plat,prix_plat,categorie_plats.id,categorie_plats.libelle from gargote_plats  as  plats JOIN gargote_categorie_plats as   categorie_plats ON plats.categorie_plat = categorie_plats.libelle;


-- update colonne id_categorie_plat de Gargotte plat 
UPDATE gargote_plats SET id_categorie_plat = (SELECT id FROM gargote_categorie_plats WHERE libelle = gargote_plats.categorie_plat);


-- supprimer la colonne categorie_plat de Gargotte plat
ALTER TABLE gargote_plats DROP COLUMN categorie_plat;
-- constrainte 
ALTER TABLE Gargote_plats ADD CONSTRAINT fk_Carargote_plats  FOREIGN KEY (id_categorie_plat) REFERENCES Gargote_categorie_plats(id) ON DELETE CASCADE ;

```

