-- Active: 1792133652074@@127.0.0.1@5432@gargote@public
CREATE TABLE Client(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom_client VARCHAR(50) NOT NULL DEFAULT 'Client de passage'
);

-- ajouter la colonne id_client a la table CommandeMere
ALTER TABLE commandemere ADD COLUMN id_client INTEGER;
-- ajouter la contrainte de clé étrangère entre CommandeMere et Client
ALTER TABLE commandemere ADD CONSTRAINT fk_CommandeMere_Client FOREIGN KEY (id_client) REFERENCES Client(id) ON DELETE CASCADE;

-- ajouter des commandes meres avec des clients 

INSERT INTO Client(nom_client) VALUES 
('Andrianandrainy'),('Rasoa'),('Rakoto'),('Rabe'),('Rasoa');


-- ajouter des commandes meres avec des clients
INSERT INTO CommandeMere(date_commande, id_client) VALUES
('2023-01-01', 1);

-- ajouter des commandes filles pour la commande mere avec id 1
INSERT INTO CommandeFille(id_commande_mere, id_plat, quantite) VALUES
(1, 1, 2),
(1, 2, 1),
(1, 3, 3);
-- jointure pour ne pas perde aucun donnee  commande avec les commandes filles et les clients 
