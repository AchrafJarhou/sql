CREATE TABLE Modele
(  
    id_modele int NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    marque 	VARCHAR(100) NOT NULL, 
    nom_modele 	VARCHAR(100) NOT NULL,
    carburant VARCHAR(50) NOT NULL,
    puissance INT NOT NULL,
    prix_catalogue DECIMAL(10,2) NOT NULL


) COMMENT '';
CREATE TABLE vehicule
(
    numero_serie VARCHAR(50) NOT NULL PRIMARY KEY, 
    modele_id INT,
    date_arrivee DATE NOT NULL,
    etat 	VARCHAR(50) NOT NULL,
    FOREIGN KEY (modele_id) REFERENCES MOdele(id_modele)


);
CREATE TABLE Client
(
    id_client INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    nom 	VARCHAR(100) NOT NULL, 
    prenom 	VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telephone VARCHAR(20) NOT NULL
);
CREATE TABLE Commande
(
    id_commande INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'Primary Key',
    client_id INT,
    date_commande DATE NOT NULL,
    montant_total DECIMAL(10,2) NOT NULL,
    numero_serie VARCHAR(50) NOT NULL,
    FOREIGN KEY (numero_serie) REFERENCES vehicule(numero_serie),
    FOREIGN KEY (client_id) REFERENCES Client(id_client)
);