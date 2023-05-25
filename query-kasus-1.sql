-- query untuk mendapatkan pelanggan yang membeli 3 barang berbeda.
SELECT pelanggan.nama_pelanggan, pesanan.id_pesanan
FROM pelanggan 
INNER JOIN pesanan on pelanggan.id_pelanggan = pesanan.id_pelanggan
INNER JOIN barang_pesanan on pesanan.id_pesanan = barang_pesanan.id_pesanan
GROUP BY pelanggan.nama_pelanggan, pesanan.id_pesanan
HAVING COUNT(DISTINCT barang_pesanan.id_barang) = 3;
