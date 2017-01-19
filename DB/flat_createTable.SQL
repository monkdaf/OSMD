-- Table: public.flat

-- DROP TABLE public.flat;

CREATE TABLE public.flat
(
    "ID_flat" integer NOT NULL,
    flat "char",
    "ID_building" integer,
    CONSTRAINT flat_pkey PRIMARY KEY ("ID_flat"),
    CONSTRAINT "ID_building" FOREIGN KEY ("ID_building")
        REFERENCES public.building ("ID_building") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.flat
    OWNER to postgres;
COMMENT ON TABLE public.flat
    IS 'info about flat';