/**
 * Author:  Axel
 * Created: 5 déc. 2019
 */



CREATE TABLE TUTEUR
(
    mail VARCHAR(100),
    sexe VARCHAR(1) NOT NULL,
    description VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (mail)
);


CREATE TABLE NOTES
(
    id_notes INT,
    note INT NOT NULL,
    mail varchar(100) NOT NULL,

    PRIMARY KEY (id_notes),
    FOREIGN KEY (mail) REFERENCES TUTEUR(mail)
);


CREATE TABLE INTERETS
(
    id_interets INT,
    Categorie VARCHAR(100) NOT NULL,
    mail VARCHAR(100) NOT NULL,

    PRIMARY KEY(id_interets),
    FOREIGN KEY (mail) REFERENCES TUTEUR(mail)
);
