INSERT INTO public.siswa (nama,umur,jurusan) VALUES
	 ('Andi',16,'IPA'),
	 ('Budi',17,'IPS'),
	 ('Citra',16,'IPA'),
	 ('Dewi',17,'IPS'),
	 ('Eko',16,'IPA');

-- public.siswa definition

-- Drop table

-- DROP TABLE public.siswa;

CREATE TABLE public.siswa (
	id serial4 NOT NULL,
	nama varchar(50) NOT NULL,
	umur int4 NULL,
	jurusan varchar(50) NULL,
	CONSTRAINT siswa_pkey PRIMARY KEY (id)
);