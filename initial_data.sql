-- 5 data kategori
INSERT INTO Kategori (nama) VALUES ('kategori 1', 'kategori 2', 'kategori 3', 'kategori 4', 'kategori 5');

-- 5 data anggota
INSERT INTO User (nama,alamat,no_ktp,no_hp,email) VALUES 
('User 1','Alamat  1','1234','0812','1@email.com'),
('User 2','Alamat  2','1234','0812','2@email.com'),
('User 3','Alamat  3','1234','0812','3@email.com'),
('User 4','Alamat  4','1234','0812','4@email.com'),
('User 5','Alamat  5','1234','0812','5@email.com');

-- 9 data Buku
INSERT INTO Buku (judul,pengarang,penerbit,isbn,tahun_terbit, jumlah_tersedia,kategori_id) VALUES
('Judul 1','pengarang  1','penerbit  1','2020',1,1),
('Judul 2','pengarang  2','penerbit  2','2020',1,2),
('Judul 3','pengarang  3','penerbit  3','2021',1,3),
('Judul 4','pengarang  4','penerbit  4','2021',1,4),
('Judul 5','pengarang  5','penerbit  5','2022',1,5),
('Judul 6','pengarang  6','penerbit  6','2022',1,6),
('Judul 7','pengarang  7','penerbit  7','2023',1,7),
('Judul 8','pengarang  8','penerbit  8','2023',1,8),
('Judul 9','pengarang  9','penerbit  9','2024',1,9),
('Judul 10','pengarang  10','penerbit  10','2024',1,10);

-- 3 data peminjaman
INSERT INTO Peminjaman(anggota_id, buku_id,tanggal_pinjam,tanggal_batas_kembali) VALUES
-- peminjaman user 1
(1,1,'2024-01-01','2024-01-08'),
(1,2,'2024-01-08','2024-01-15'),
(1,3,'2024-01-15','2024-01-23'),
-- peminjaman user 2
(2,4,'2024-01-02','2024-01-09'),
(2,5,'2024-01-09','2024-01-16'),
(2,6,'2024-01-16','2024-01-24'),
-- peminjaman user 3
(3,7,'2024-01-03','2024-01-10'),
(3,8,'2024-01-11','2024-01-18'),
(3,9,'2024-01-19','2024-01-26');

-- user 3 terlambat mengembalikan 5 hari
UPDATE Peminjaman
SET denda = DATEDIFF(tanggal_kembali,tanggal_batas_kembali) * 1000 --denda diasumsikan 1000 per hari
WHERE tanggal_kembali > tanggal_batas_kembali AND anggota_id=3;
