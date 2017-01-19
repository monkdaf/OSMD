-- Table: public.coolwater

-- DROP TABLE public.coolwater;

CREATE TABLE public.coolwater
(
    "ID_flat" integer NOT NULL,
    value real,
    date date,
    "ID_user" integer NOT NULL,
    CONSTRAINT "ID_flat" FOREIGN KEY ("ID_flat")
        REFERENCES public.flat ("ID_flat") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "ID_user" FOREIGN KEY ("ID_user")
        REFERENCES public."user" ("ID_user") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.coolwater
    OWNER to postgres;