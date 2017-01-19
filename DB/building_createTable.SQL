-- Table: public.building

-- DROP TABLE public.building;

CREATE TABLE public.building
(
    "ID_building" integer NOT NULL,
    country "char",
    region "char",
    city "char",
    "number" "char",
    CONSTRAINT "ID_building" PRIMARY KEY ("ID_building")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.building
    OWNER to postgres;