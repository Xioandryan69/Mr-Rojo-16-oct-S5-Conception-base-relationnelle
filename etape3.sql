-- Active: 1792133652074@@127.0.0.1@5432@gargote@public
CREATE TABLE CommandeMere 
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    date_commande DATE NOT NULL

);

CREATE TABLE CommandeFille
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_commande_mere INTEGER NOT NULL,
    id_plat INTEGER NOT NULL,
    quantite INTEGER NOT NULL CHECK (quantite > 0),
    CONSTRAINT fk_CommandeFille_CommandeMere FOREIGN KEY (id_commande_mere) REFERENCES CommandeMere(id) ON DELETE CASCADE,
    CONSTRAINT fk_CommandeFille_Gargote_plats FOREIGN KEY (id_plat) REFERENCES Gargote_plats(id) ON DELETE CASCADE
);

