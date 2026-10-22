 --[CREATE] Lakukan INSERT minimal 3 baris data dummy ke masing-masing tabel (total 9 baris data).
INSERT INTO kios (nama_kios, ukuran) VALUES
('Kios Berkah Bumbu', '3x4 meter'),
('Kios Sayur Segar', '2x3 meter'),
('Kios Daging Makmur', '4x4 meter');

INSERT INTO transaksi (tanggal, total_bayar) VALUES
('2026-10-22', 45000.00),
('2026-10-22', 125000.00),
('2026-10-22', 85000.00);

INSERT INTO rekap_penjualan_harian (id_kios, id_transaksi, tanggal, jumlah_transaksi, total_item_terjual, total_pendapatan) VALUES
(1, 1, '2026-10-22', 1, 3, 45000.00),
(2, 2, '2026-10-22', 1, 5, 125000.00),
(3, 3, '2026-10-22', 1, 2, 85000.00);

--[READ] Tampilkan seluruh isi salah satu Tabel Induk menggunakan perintah SELECT *.
SELECT * FROM kios;

--[UPDATE] Ubah satu nilai data (misal: mengubah harga, mengubah status, atau memperbaiki nama) pada Tabel Transaksi. Wajib menggunakan klausa WHERE pada Primary Key agar tidak terjadi update massal.
UPDATE rekap_penjualan_harian 
SET total_item_terjual = 4, total_pendapatan = 55000.00 
WHERE id_kios = 1 AND id_transaksi = 1;

--[DELETE] Hapus salah satu baris data dummy pada Tabel Transaksi. Wajib menggunakan klausa WHERE.
DELETE FROM rekap_penjualan_harian 
WHERE id_kios = 2 AND id_transaksi = 2;
