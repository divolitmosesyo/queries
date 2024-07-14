-- daftar buku yang tidak pernah dipinjam
SELECT b.judul
FROM Buku as b
LEFT JOIN Peminjaman as p on b.id = p.buku_id
WHERE b.id is NULL;

-- daftar user yang terlambat mengembalikan buku dengan dendanya
SELECT a.nama, p.denda
FROM User AS a
JOIN Peminjaman AS p ON a.id = p.anggota_id
WHERE p.denda > 0;

-- daftar user dengan buku yang dipinjam
SELECT a.nama, b.judul
FROM User AS a
JOIN Peminjam AS p on a.id = p.anggota_id
JOIN Buku AS b ON a.id = b.id;
