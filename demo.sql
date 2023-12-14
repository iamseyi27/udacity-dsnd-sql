USE demo;
DROP TABLE IF EXISTS Country;
DROP TABLE IF EXISTS State ;

CREATE TABLE Country (
	countryid INTEGER,
    countryName CHAR(20),
    PRIMARY KEY (countryid)
);

CREATE TABLE State (
	stateid INTEGER,
    countryid INTEGER,
    stateName CHAR(20),
    PRIMARY KEY (stateid)
);

ALTER TABLE State ADD CONSTRAINT constFKPK1 FOREIGN KEY (countryid) REFERENCES Country (countryid);

INSERT INTO Country VALUES (1, 'India');
INSERT INTO Country VALUES (2, 'Nepal');
INSERT INTO Country VALUES (3, 'United States');
INSERT INTO Country VALUES (4, 'Canada');
INSERT INTO Country VALUES (5, 'Sri Lanka');
INSERT INTO Country VALUES (6, 'Brazil');

INSERT INTO State VALUES (1, 1, 'Maharashtra');
INSERT INTO State VALUES (2, 1, 'Punjab');
INSERT INTO State VALUES (3, 2, 'Kathmandu');
INSERT INTO State VALUES (4, 3, 'California');
INSERT INTO State VALUES (5, 3, 'Texas');
INSERT INTO State VALUES (6, 4, 'Alberta');