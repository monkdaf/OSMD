-- Table: user

DROP SEQUENCE userid_seq;
CREATE SEQUENCE userid_seq;

DROP TABLE "User";
CREATE TABLE "User"
(
  "id" integer NOT NULL PRIMARY KEY DEFAULT NEXTVAL('userid_seq'),
  "email" varchar(64),
  "passwordDigest" varchar(64) NOT NULL,
  "first_name" varchar(64),
  "last_name" varchar(64),
  "createdAt" date,
  "updatedAt"  date
);

--  username varchar(64) NOT NULL,
--  displayname varChar(64),
--  password varChar(64),
--    email varchar(64),
--    role role_type DEFAULT 'user',
--  flatid integer REFERENCES flat

INSERT INTO users (username, email, flatid) VALUES ('daf', 'daf@ukr.net', 1);
