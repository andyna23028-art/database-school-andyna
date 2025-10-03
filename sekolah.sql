CREATE DATABASE schoolproject;
USE schoolproject;

CREATE TABLE siswa (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(50) NOT NULL,
    umur INT,
    jurusan VARCHAR(50)
);

CREATE TABLE nilai (
    id SERIAL PRIMARY KEY,
    siswa_id INT,
    mata_pelajaran VARCHAR(100),
    nilai INT,
    FOREIGN KEY (siswa_id) REFERENCES siswa(id)
);


INSERT INTO siswa (nama, umur, jurusan) VALUES
("Andi", 16, "IPA"),
("Budi", 17, "IPS"),
("Citra", 16, "IPA"),
("Dewi", 17, "IPS"),
("Eko", 16, "IPA");

INSERT INTO nilai (siswa_id, mata_pelajaran, nilai) VALUES
(1, "Matematika", 85),
(1, "Fisika", 88),
(2, "Bahasa Inggris", 90),
(3, "Biologi", 78),
(4, "Ekonomi", 82),
(5, "Kimia", 91);

SELECT * FROM siswa;
SELECT nama FROM siswa WHERE jurusan = 'IPA';

SELECT siswa.nama, siswa.jurusan, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama, siswa.jurusan;

UPDATE siswa SET jurusan = 'Bahasa' WHERE nama = 'Budi';
SELECT nama FROM siswa
WHERE id NOT IN (SELECT siswa_id FROM nilai);
SELECT * FROM nilai WHERE id = 3;
DELETE FROM nilai WHERE id = 3;
