CREATE DATABASE proyecto_2;
USE proyecto2;

CREATE TABLE Accesos_por_tecnologia(
ID INT AUTO_INCREMENT,
Trimestre INT,
Provincia VARCHAR(50),
ADSL INT,
Cablemodem INT,
Fibra_optica INT,
Wireless INT,
Otros INT,
Total INT,
UNIQUE(ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE Accesos_por_velocidad(
ID INT AUTO_INCREMENT,
Trimestre INT,
Provincia VARCHAR(50),
HASTA_512_kbps INT,
De_512_Kbps_A_1_Mbps INT,
De_1_Mbps_A_6_Mbps INT,
De_6_Mbps_A_10_Mbps INT,
De_10_Mbps_A_20_Mbps INT,
De_20_Mbps_A_30_Mbps INT,
De_30_Mbps INT,
Otros INT,
Total INT,
UNIQUE(ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE Ingresos(
ID INT AUTO_INCREMENT,
Año YEAR,
Trimestre INT,
Ingresos INT,
Periodo VARCHAR(30),
UNIQUE(ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE PenetracionTotales(
ID INT AUTO_INCREMENT,
Año YEAR,
Trimestre INT,
Accesos_por_cada_100_hogares FLOAT,
Accesos_por_cada_100_hab FLOAT,
Periodo VARCHAR(30),
UNIQUE(ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE PenetracionHogares(
ID INT AUTO_INCREMENT,
Año YEAR,
Trimestre INT,
Provincia VARCHAR(30),
Accesos_por_cada_100_hogares FLOAT,
UNIQUE(ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE PenetracionPoblacion(
ID INT AUTO_INCREMENT,
Año YEAR,
Trimestre INT,
Provincia VARCHAR (30),
Accesos_por_cada_100_habitantes FLOAT,
UNIQUE(ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE TotalAccesoTecnologia(
ID INT AUTO_INCREMENT,
Año YEAR,
Trimestre INT,
ADSL INT,
Cablemodem INT,
Fibra_optica INT,
Wireless INT,
Otros INT,
Total INT,
Periodo VARCHAR(30),
UNIQUE(ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

CREATE TABLE VelocidadPromedioProvinca(
ID INT AUTO_INCREMENT,
Año YEAR,
Trimestre INT,
Provincia VARCHAR(30),
Mbps_Media_de_bajada FLOAT,
UNIQUE(ID)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

ALTER TABLE `accesos tecnologia3`
CHANGE MyUnknownColumn IDAccesosTecnologia INT;
ALTER TABLE `accesos tecnologia3` ADD PRIMARY KEY (IDAccesosTecnologia);

ALTER TABLE `accesos velocidad3`
CHANGE MyUnknownColumn IDAccesosVelocidad INT;
ALTER TABLE `accesos velocidad3` ADD PRIMARY KEY (IDAccesosVelocidad);

ALTER TABLE `ingresos3`
CHANGE MyUnknownColumn IDIngresos INT;
ALTER TABLE `ingresos3` ADD PRIMARY KEY (IDIngresos);

ALTER TABLE `penetracion poblacion3`
CHANGE MyUnknownColumn IDPenetracionPoblacion INT;
ALTER TABLE `penetracion poblacion3` ADD PRIMARY KEY (IDPenetracionPoblacion);

ALTER TABLE `penetracion hogares3`
CHANGE MyUnknownColumn IDPenetracionHogares INT;
ALTER TABLE `penetracion hogares3` ADD PRIMARY KEY (IDPenetracionHogares);

ALTER TABLE `penetracion totales3`
CHANGE MyUnknownColumn IDPenetracionTotales INT;
ALTER TABLE `penetracion totales3` ADD PRIMARY KEY (IDPenetracionTotales);

ALTER TABLE `total acceso tecnologia3`
CHANGE MyUnknownColumn IDTotalAccesoTec INT;
ALTER TABLE `total acceso tecnologia3` ADD PRIMARY KEY (IDTotalAccesoTec);

CREATE TABLE provincias(
IDProvincia INT AUTO_INCREMENT PRIMARY KEY,
Provincia VARCHAR(30));

CREATE TABLE tecnologias(
IDTecnologia INT AUTO_INCREMENT PRIMARY KEY,
Tecnologia VARCHAR(30));

CREATE TABLE velocidades(
IDVelocidades INT AUTO_INCREMENT PRIMARY KEY,
Velocidades VARCHAR(30));

UPDATE `accesos tecnologia3`
SET Provincia=TRIM(Provincia);

UPDATE `accesos velocidad3`
SET Provincia=TRIM(Provincia);

UPDATE `penetracion hogares3`
SET Provincia=TRIM(Provincia);

UPDATE `penetracion poblacion3`
SET Provincia=TRIM(Provincia);

UPDATE `velocidad promedio`
SET Provincia=TRIM(Provincia);

INSERT INTO provincias (Provincia) 
SELECT DISTINCT Provincia FROM `accesos tecnologia3`;

INSERT INTO tecnologias (Tecnologia) VALUES('ADSL');
INSERT INTO tecnologias (Tecnologia) VALUES('Cablemodem');
INSERT INTO tecnologias (Tecnologia) VALUES('Fibra óptica');
INSERT INTO tecnologias (Tecnologia) VALUES('Wireless');
INSERT INTO tecnologias (Tecnologia) VALUES('Otros');

INSERT INTO velocidades (Velocidades) VALUES('HASTA 512 kbps');
INSERT INTO velocidades (Velocidades) VALUES('+ 512 Kbps - 1 Mbps');
INSERT INTO velocidades (Velocidades) VALUES('+ 1 Mbps - 6 Mbps');
INSERT INTO velocidades (Velocidades) VALUES('+ 6 Mbps - 10 Mbps');
INSERT INTO velocidades (Velocidades) VALUES('+ 10 Mbps - 20 Mbps');
INSERT INTO velocidades (Velocidades) VALUES('+ 20 Mbps - 30 Mbps');
INSERT INTO velocidades (Velocidades) VALUES('+ 30 Mbps');
INSERT INTO velocidades (Velocidades) VALUES('OTROS');

SET SQL_SAFE_UPDATES = 0;

UPDATE `accesos velocidad3` av 
JOIN provincias p 
ON (av.Provincia=p.Provincia)
SET av.Provincia=p.IDProvincia;

UPDATE `accesos tecnologia3` ac 
JOIN provincias p 
ON (ac.Provincia=p.Provincia)
SET ac.Provincia=p.IdProvincia;

UPDATE `penetracion hogares3` pp
JOIN provincias p 
ON (pp.Provincia=p.Provincia)
SET pp.Provincia=p.IdProvincia;

UPDATE `penetracion poblacion3` pp
JOIN provincias p 
ON (pp.Provincia=p.Provincia)
SET pp.Provincia=p.IdProvincia;

UPDATE `velocidad promedio` vp
JOIN provincias p 
ON (vp.Provincia=p.Provincia)
SET vp.Provincia=p.IdProvincia;