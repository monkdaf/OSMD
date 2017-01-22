-- Table: flat

DROP SEQUENCE flatid_seq;
CREATE SEQUENCE flatid_seq;

DROP TABLE flat;
CREATE TABLE public.flat
(
    flatid integer NOT NULL PRIMARY KEY DEFAULT NEXTVAL('flatid_seq'),
    flatnumber varchar(10),
    buildingid integer REFERENCES building
);

INSERT INTO flat (flatnumber, buildingid) VALUES ('1', 1);
