CREATE DATABASE 2007002360_lokaverkefni_5;

USE 2007002360_lokaverkefni_5;

CREATE TABLE Flytjandi
(
	ID PRIMARY KEY,
    nafn VARCHAR(25),
    faedingarAr VARCHAR(25),
    danardagur INTEGER,
    kyn VARCHAR(3),
    flokkur FOREIGN KEY,
    thjoderni FOREIGN KEY
);

CREATE TABLE Flokkur
(
		ID PRIMARY KEY,
        nafn VARCHAR(25),
        Lysing VARCHAR(55)
);

CREATE TABLE Lag
(
	ID PRIMARY KEY,
    nafn VARCHAR(25),
    lengd INTEGER,
    texti VARCHAR(1000),
    flytjandi_ID FOREIGN KEY,
    tegund FOREIGN KEY,
    hofundur FOREIGN KEY,
    diskur FOREIGN KEY
);

CREATE TABLE Tegund
(
	ID PRIMARY KEY,
    nafn VARCHAR(25),
    uppruni VARCHAR(50)
);

CREATE TABLE Hofundur
(
	ID PRIMARY KEY,
    nafn (25),
    aldur INTEGER(3),
    thjoderni VARCHAR(50),
    faedingarDagur VARCHAR(50),
    danarDagur VARCHAR(50)
);

CREATE TABLE Utgefandi
(
	ID PRIMARY KEY,
    nafn VARCHAR(25),
    stofnunardagur VARCHAR(25),
    aldur INTEGER,
    tegund_flytjanda VARCHAR(50),
    stadsetning VARCHAR(50)
);
CREATE TABLE Diskur
(
	ID PRIMARY KEY,
    nafn VARCHAR(25),
    utgafuar INTEGER,
    tegund_disks VARCHAR(50),
    fjoldi_laga INTEGER,
    utgefandi_ID FOREIGN KEY 
);
CREATE TABLE Thjoderni
(
	ID PRIMARY KEY,
    nafn VARCHAR(25),
    ibuafjoldi INTEGER,
    staerd INTEGER,
    hofudborg VARCHAR(30)
);
