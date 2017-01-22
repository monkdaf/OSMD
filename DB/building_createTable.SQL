-- Table: building

DROP SEQUENCE buildingid_seq;
CREATE SEQUENCE buildingid_seq;

DROP TABLE building;
CREATE TABLE building
(
    buildingid integer NOT NULL PRIMARY KEY DEFAULT NEXTVAL('buildingid_seq'),
    country varchar(64),
    region varchar(64),
    city varchar(64),
    street varchar(64),
    build varchar(64)
);

INSERT INTO building (country, region, city, street, build)
VALUES ('Украина', 'Днепропетровская', 'Днепр', 'Любарского', '84а');
