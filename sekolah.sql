-- Project Backend: Database Sekolah
-- Dibuat oleh: Andyna Aulia Azzahra
-- Tugas: Membuat database, tabel, relasi, query, dan version control

-- 1. Membuat Database
CREATE DATABASE schoolproject;

-- 2. Menggunakan Database (untuk MySQL)
USE schoolproject;

-- 3. Membuat Tabel Siswa
CREATE TABLE siswa (
    id INT AUTO_INCREMENT PRIMARY KEY,       -- Gunakan SERIAL untuk PostgreSQL
    nama VARCHAR(50) NOT NULL,
    umur INT,
    jurusan VARCHAR(50)
);

-- 4. Membuat Tabel Nilai
CREATE TABLE nilai (
    id INT AUTO_INCREMENT PRIMARY KEY,       -- Gunakan SERIAL untuk PostgreSQL
    siswa_id INT,
    mata_pelajaran VARCHAR(100),
    nilai INT,
    FOREIGN KEY (siswa_id) REFERENCES siswa(id)
);

-- 5. Menambahkan Data Siswa
INSERT INTO siswa (nama, umur, jurusan) VALUES
('Andi', 16, 'IPA'),
('Budi', 17, 'IPS'),
('Citra', 16, 'IPA'),
('Dewi', 17, 'IPS'),
('Eko', 16, 'IPA');

-- 6. Menambahkan Data Nilai
INSERT INTO nilai (siswa_id, mata_pelajaran, nilai) VALUES
(1, 'Matematika', 85),
(1, 'Fisika', 88),
(2, 'Bahasa Inggris', 90),
(3, 'Biologi', 78),
(4, 'Ekonomi', 82),
(5, 'Kimia', 91);

-- 7. Menampilkan Semua Siswa
SELECT * FROM siswa;

-- 8. Menampilkan Siswa dengan Jurusan IPA
SELECT nama FROM siswa WHERE jurusan = 'IPA';

-- 9. Menampilkan Rata-rata Nilai Tiap Siswa
SELECT siswa.nama, siswa.jurusan, AVG(nilai.nilai) AS rata_nilai
FROM siswa
JOIN nilai ON siswa.id = nilai.siswa_id
GROUP BY siswa.nama, siswa.jurusan;

-- 10. Update Jurusan Siswa
UPDATE siswa SET jurusan = 'Bahasa' WHERE nama = 'Budi';

-- 11. Menampilkan Siswa yang Belum Punya Nilai
SELECT nama FROM siswa
WHERE id NOT IN (SELECT siswa_id FROM nilai);

-- 12. Hapus Salah Satu Nilai
SELECT * FROM nilai WHERE id = 3;  -- Cek dulu
DELETE FROM nilai WHERE id = 3;    -- Lalu hapus