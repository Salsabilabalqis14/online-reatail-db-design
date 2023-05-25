-- query untuk melihat nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
SELECT pelanggan.id_pelanggan, pelanggan.nama_pelanggan, AVG(total_belanja) AS rata_transaksi
FROM pelanggan
INNER JOIN pesanan ON pelanggan.id_pelanggan = pesanan.id_pelanggan
INNER JOIN (
    SELECT id_pesanan, SUM(jumlah_pesanan * harga) AS total_belanja
    FROM barang_pesanan 
    INNER JOIN barang ON barang_pesanan.id_barang = barang.id_barang
    GROUP BY id_pesanan
) sub_query ON pesanan.id_pesanan = sub_query.id_pesanan
WHERE created_at >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY pelanggan.id_pelanggan, pelanggan.nama_pelanggan
ORDER BY pelanggan.id_pelanggan;
