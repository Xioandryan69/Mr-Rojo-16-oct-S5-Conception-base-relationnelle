-- Active: 1792133652074@@127.0.0.1@5432@gargotte
CREATE DATABASE  gargotte;

\c gargotte;

-- Database Postgres 

-- Gargotte 
CREATE TABLE Gargotte 
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    lieu VARCHAR(150),
    nom VARCHAR(150)
);

INSERT INTO Gargotte(lieu,nom) VALUES ('Antananrivo','Gargotte de rado ');

-- Salle 
CREATE TABLE Salle
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombrePlace  NUMERIC(8,2)
);  


INSERT INTO Salle(nombrePlace) VALUES (8);

--Salle Gargotte 
CREATE TABLE SalleGargotte 
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    idSalle INT ,
    idGargotte INT , 
    CONSTRAINT fk_SalleGargotte_Salle FOREIGN KEY (idSalle) REFERENCES Salle(id) ON DELETE CASCADE,
    CONSTRAINT fk_SalleGargotte_Gargotte FOREIGN KEY (idGargotte) REFERENCES Gargotte(id) ON DELETE CASCADE 
);

INSERT INTO SalleGargotte(idSalle,idGargotte) VALUES (1,1);

CREATE TABLE Personnel 
( 
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    role VARCHAR(150) CHECK (role IN ('cuisinier','serveur','employe','gerant')),
    idGargotte INT ,
    nom VARCHAR(150),
    prenom VARCHAR(150),
    CONSTRAINT fk_Personnel_Gargotte FOREIGN KEY (idGargotte) REFERENCES Gargotte(id) ON DELETE CASCADE
);

INSERT INTO Personnel(role,idGargotte,nom,prenom) VALUES ('cuisinier',1,'Rado','Rado');
INSERT INTO Personnel(role,idGargotte,nom,prenom) VALUES ('serveur',1,'Rado','Rado');

INSERT INTO Personnel(role,idGargotte,nom,prenom) VALUES ('employe',1,'Rado','Rado');


