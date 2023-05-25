-- Mengisi data pelanggan
INSERT INTO pelanggan (`nama_pelanggan`, `alamat`, `email`, `no_telepon`) VALUES
    ('Sitti Safiatun', 'Jl. Singasari No 2 Sibolga', 'sittisafiatun@gmail.com', '081218297352'),
    ('Sawaliyah Nur', 'Jl. Kamboja No 12 Medan', 'sawaliyah41@gmail.com', '081372836473'),
    ('Syaripa Anum', 'Jl. Ambon No 8 Medan', 'syaripaanum@gmail.com', '089672838294'),
    ('Lidya Gabriella', 'Jl. Merak No 4 Medan', 'lidyagabr08@gmail.com', '081273849572'),
    ('Zefania Agustina', 'Jl. Pendidikan No 3 Siantar', 'zefaniaagus72@gmail.com', '083637482938'),
    ('Rizky Prayoga', 'Jl. P. Kemerdekaan No 5 Binjai', 'rizkypray87@gmail.com', '083374829384'),
    ('Ayu Wulandari', 'Jl. Mawar No 22 Kuala', 'ayuwulan98@gmail.com', '089637485929'),
    ('Puan Abidah', 'Jl. Universitas No 14 Medan', 'puanabidah16@gmail.com', '081283847384'),
    ('Andri Hasudungan', 'Jl. Dr. Mansyur No 1 Medan', 'andri18@gmail.com', '089625364739'),
    ('Belintawati Zelda', 'Jl. Mulia No 20 Bahorok', 'belintazel46@gmail.com', '083374839847');

-- Mengisi data kategori_barang
INSERT INTO kategori_barang (`nama_kategori`, `deskripsi`, `created_at`) VALUES
    ('Elektronik', 'Kategori barang elektronik', '2023-01-02 09:10:02'),
    ('Peralatan Rumah Tangga', 'Kategori barang peralatan rumah tangga', '2023-01-02 09:30:10'),
    ('Pakaian', 'Kategori barang pakaian', '2023-01-04 08:52:00'),
    ('Makanan', 'Kategori barang makanan', '2023-01-04 09:20:04'),
    ('Minuman', 'Kategori barang minuman', '2023-01-04 09:34:22'),
    ('Buku', 'Kategori barang buku', '2023-01-09 14:04:24'),
    ('Kosmetik', 'Kategori barang kosmetik', '2023-01-10 15:38:00'),
    ('Alat Olahraga', 'Kategori barang alat olahraga', '2023-02-03 10:02:10'),
    ('Mainan', 'Kategori barang mainan', '2023-02-03 10:26:20'),
    ('Alat Musik', 'Kategori barang alat musik', '2023-03-05 11:06:10');

-- Mengisi data barang
INSERT INTO barang (`nama_barang`, `harga`, `jumlah_barang`, `id_kategori`) VALUES
    ('Laptop', 7500000, 10, 1),
    ('Smartphone', 5000000, 25, 1),
    ('Piring', 20000, 20, 2),
    ('Panci', 50000, 12, 2),
    ('Kemeja', 120000, 30, 3),
    ('Celana Jeans', 350000, 20, 3),
    ('Kaos Polos', 80000, 25, 3),
    ('Chitato', 25000, 25, 4),
    ('Novel The Rainbow Troops', 100000, 6, 6),
    ('Bola Sepak', 150000, 10, 8);

-- Mengisi data pesanan
INSERT INTO pesanan (`id_pelanggan`, `created_at`, `updated_at`) VALUES
    (1, '2023-05-14 10:02:10', ''),
    (2, '2023-05-14 11:12:12', ''),
    (3, '2023-05-14 13:22:09', ''),
    (4, '2023-05-15 09:32:00', ''),
    (8, '2023-05-15 11:44:40', ''),
    (2, '2023-05-15 14:00:20', ''),
    (5, '2023-05-16 10:21:06', ''),
    (6, '2023-05-16 15:22:50', ''),
    (2, '2023-05-20 08:45:07', ''),
    (10, '2023-05-20 10:52:30', '');

-- Mengisi data barang_pesanan
INSERT INTO barang_pesanan (`id_pesanan`, `id_barang`, `jumlah_pesanan`) VALUES
    (1, 1, 1),
    (1, 2, 1),
    (2, 4, 2),
    (3, 5, 2),
    (3, 6, 1),
    (3, 8, 3),
    (4, 10, 5),
    (5, 9, 1),
    (5, 8, 1),
    (6, 1, 1),
    (7, 3, 4),
    (8, 8, 2),
    (9, 4, 3),
    (10, 7, 10);

