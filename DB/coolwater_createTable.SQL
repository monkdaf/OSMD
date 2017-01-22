-- Table: coolwater

DROP TABLE coolwater;

CREATE TABLE coolwater
(
    flatid integer NOT NULL REFERENCES flat,
    value real,
    date date,
    userid integer NOT NULL REFERENCES users
);

INSERT INTO coolwater (flatid, value, date, userid)
VALUES (1, 25987.6, '2017-01-22', 1);
