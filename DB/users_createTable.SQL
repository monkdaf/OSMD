-- Table: user

DROP SEQUENCE userid_seq;
CREATE SEQUENCE userid_seq;

DROP TYPE role_type;
CREATE TYPE role_type AS ENUM ('user', 'head', 'admin');

DROP TABLE users;
CREATE TABLE users
(
    userid integer NOT NULL PRIMARY KEY DEFAULT NEXTVAL('userid_seq'),
    username varchar(64) NOT NULL,
    displayname varChar(64),
    password varChar(64),
    email varchar(64),
    role role_type DEFAULT 'user',
    flatid integer REFERENCES flat
);

INSERT INTO users (username, email, flatid) VALUES ('daf', 'daf@ukr.net', 1);
