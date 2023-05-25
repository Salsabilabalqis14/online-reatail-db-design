-- query untuk melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT barang.id_barang, barang.nama_barang, COUNT(*) AS total_pembelian
FROM barang
INNER JOIN barang_pesanan ON barang.id_barang = barang_pesanan.id_barang
GROUP BY barang.id_barang, barang.nama_barang
ORDER BY total_pembelian DESC LIMIT 3;
