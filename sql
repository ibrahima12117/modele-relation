CREATE TABLE Gymnase (
  ID_Gymnase INT PRIMARY KEY,
  Nom VARCHAR(100),
  Adresse VARCHAR(255),
  Telephone VARCHAR(15)
);

CREATE TABLE Membre (
  ID_Membre INT PRIMARY KEY,
  Nom VARCHAR(100),
  Prenom VARCHAR(100),
  Adresse VARCHAR(255),
  DateNaissance DATE,
  Sexe CHAR(1),
  ID_Gymnase INT,
  FOREIGN KEY (ID_Gymnase) REFERENCES Gymnase(ID_Gymnase)
);

CREATE TABLE Coach (
  ID_Coach INT PRIMARY KEY,
  Nom VARCHAR(100),
  Prenom VARCHAR(100),
  Age INT,
  Specialite VARCHAR(100)
);

CREATE TABLE Séance (
  ID_Séance INT PRIMARY KEY,
  TypeSport VARCHAR(100),
  Horaire TIME,
  ID_Coach1 INT,
  ID_Coach2 INT,
  ID_Gymnase INT,
  FOREIGN KEY (ID_Coach1) REFERENCES Coach(ID_Coach),
  FOREIGN KEY (ID_Coach2) REFERENCES Coach(ID_Coach),
  FOREIGN KEY (ID_Gymnase) REFERENCES Gymnase(ID_Gymnase)
);

CREATE TABLE Inscription (
  ID_Inscription INT PRIMARY KEY,
  ID_Membre INT,
  ID_Séance INT,
  FOREIGN KEY (ID_Membre) REFERENCES Membre(ID_Membre),
  FOREIGN KEY (ID_Séance) REFERENCES Séance(ID_Séance)
);
