-- Active: 1792133652074@@127.0.0.1@5432@gargote@public
/\c gargote;

-- Etape 1 : Creation du premier table 

--liste des plats 

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


