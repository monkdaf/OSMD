-- Table: public."user"

-- DROP TABLE public."user";

CREATE TABLE public."user"
(
    "ID_user" integer NOT NULL,
    fullname "char" NOT NULL,
    "isAdmin" boolean,
    email "char",
    "ID_flat" integer NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY ("ID_user"),
    CONSTRAINT "ID_flat" FOREIGN KEY ("ID_user")
        REFERENCES public.flat ("ID_flat") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."user"
    OWNER to postgres;
COMMENT ON TABLE public."user"
    IS 'User info';