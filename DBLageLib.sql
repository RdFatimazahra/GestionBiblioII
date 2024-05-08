CREATE TABLE admin (
    id SERIAL PRIMARY KEY,
    username VARCHAR(55) UNIQUE,
    password VARCHAR(55)
);


CREATE TABLE membre (
    idMembre SERIAL PRIMARY KEY,
    nom VARCHAR(30),
    prenom VARCHAR(30),
    address VARCHAR(50),
    tel VARCHAR(10),
    email VARCHAR(50),
	username VARCHAR(55) UNIQUE,
    password VARCHAR(55)
	
);

CREATE TABLE livre     (
    idLivre SERIAL PRIMARY KEY,
    titre VARCHAR(60),
    auteur VARCHAR(30),
    edition VARCHAR(50),
    pubDate VARCHAR(10)

)

CREATE TABLE emprunt (
    idEmprunt SERIAL PRIMARY KEY,
    idLivre INT,
    statut varchar(15),
    idMembre INT,
    dateDebut DATE,
    dateFin DATE,
    FOREIGN KEY (idLivre) REFERENCES livre(idLivre),
    FOREIGN KEY (idMembre) REFERENCES membre(idMembre)
);

CREATE TABLE feedback (
    idFeedback SERIAL PRIMARY KEY,
    feedback varchar(1000),
	idLivre INT,
    idMembre INT,
    FOREIGN KEY (idLivre) REFERENCES livre(idLivre),
    FOREIGN KEY (idMembre) REFERENCES membre(idMembre)
);

