CREATE TABLE kios (
    id_kios INT AUTO_INCREMENT,
    nama_kios VARCHAR(100) NOT NULL,
    ukuran VARCHAR(20),
    PRIMARY KEY (id_kios)
);

CREATE TABLE transaksi (
    id_transaksi INT AUTO_INCREMENT,
    tanggal DATE NOT NULL,
    total_bayar DECIMAL(14,2) NOT NULL,
    PRIMARY KEY (id_transaksi)
);

CREATE TABLE rekap_penjualan_harian (
    id_kios INT,
    id_transaksi INT,
    tanggal DATE NOT NULL,
    jumlah_transaksi INT DEFAULT 0,
    total_item_terjual INT DEFAULT 0,
    total_pendapatan DECIMAL(16,2) DEFAULT 0.00,
    PRIMARY KEY (id_kios, id_transaksi),
    FOREIGN KEY (id_kios) REFERENCES kios(id_kios) ON DELETE CASCADE,
    FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi) ON DELETE CASCADE
);

