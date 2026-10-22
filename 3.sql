--Buatlah SATU perintah SQL query tunggal yang harus memuat keempat komponen ini sekaligus (select, join, where, grup by) dalam satu sintaks:
SELECT 
    k.nama_kios, 
    COUNT(r.id_transaksi) AS total_aktivitas_transaksi,
    SUM(r.total_pendapatan) AS akumulasi_pendapatan_kios
FROM rekap_penjualan_harian r
JOIN kios k ON r.id_kios = k.id_kios
WHERE r.total_pendapatan > 20000.00
GROUP BY k.nama_kios;
