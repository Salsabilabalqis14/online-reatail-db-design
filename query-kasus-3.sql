-- query untuk melihat kategori barang yang paling banyak barangnya.
SELECT kategori_barang.id_kategori, kategori_barang.nama_kategori, COUNT(*) AS jumlah_barang
FROM kategori_barang
INNER JOIN barang ON kategori_barang.id_kategori = barang.id_kategori
GROUP BY kategori_barang.id_kategori, kategori_barang.nama_kategori
ORDER BY jumlah_barang DESC LIMIT 1;
