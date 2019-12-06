/**
 * Author:  Axel
 * Created: 6 déc. 2019
 */

CREATE TABLE TUTEUR
(
    mail VARCHAR(100) NOT NULL PRIMARY KEY,
    sexe VARCHAR(1),
    description VARCHAR(255) NOT NULL
);


CREATE TABLE NOTES
(
    id_notes INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) PRIMARY KEY,
    note INT NOT NULL,
    mail varchar(100) NOT NULL REFERENCES TUTEUR(MAIL)
);


CREATE TABLE INTERETS
(
    id_interets INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1) PRIMARY KEY,
    Categorie VARCHAR(100) NOT NULL,
    mail VARCHAR(100) NOT NULL REFERENCES TUTEUR(MAIL)
);

INSERT INTO TUTEUR VALUES('blabla@bla.fr','M','Il était une fois 3 petits cochons');
INSERT INTO NOTES (note,mail) VALUES(8,'blabla@bla.fr');
INSERT INTO NOTES (note,mail) VALUES(2,'blabla@bla.fr');

INSERT INTO INTERETS(categorie,mail) VALUES('grillades','blabla@bla.fr');
INSERT INTO INTERETS(categorie,mail) VALUES('bouffe','blabla@bla.fr');

DELETE FROM INTERETS WHERE MAIL = 'blabla@bla.fr' AND CATEGORIE = 'bouffe';
