INSERT INTO public.nilai (siswa_id,mata_pelajaran,nilai) VALUES
	 (1,'Matematika',85),
	 (1,'Fisika',88),
	 (3,'Biologi',78),
	 (4,'Ekonomi',82),
	 (5,'Kimia',91),
	 (5,'Matematika',89),
	 (1,'Matematika',85),
	 (1,'Fisika',88),
	 (2,'Bahasa Inggris',90),
	 (3,'Biologi',78);
INSERT INTO public.nilai (siswa_id,mata_pelajaran,nilai) VALUES
	 (4,'Ekonomi',82),
	 (5,'Kimia',91),
	 (5,'Matematika',89),
	 (1,'Matematika',85),
	 (1,'Fisika',88),
	 (2,'Bahasa Inggris',90),
	 (3,'Biologi',78),
	 (4,'Ekonomi',82),
	 (5,'Kimia',91),
	 (5,'Matematika',89);

-- public.nilai definition

-- Drop table

-- DROP TABLE public.nilai;

CREATE TABLE public.nilai (
	id serial4 NOT NULL,
	siswa_id int4 NULL,
	mata_pelajaran varchar(100) NULL,
	nilai int4 NULL,
	CONSTRAINT nilai_pkey PRIMARY KEY (id)
);


-- public.nilai foreign keys

ALTER TABLE public.nilai ADD CONSTRAINT nilai_siswa_id_fkey FOREIGN KEY (siswa_id) REFERENCES public.siswa(id);