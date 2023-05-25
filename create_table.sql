-- Membuat tabel pelanggan
CREATE TABLE pelanggan (
    `id_pelanggan` INT NOT NULL AUTO_INCREMENT,
    `nama_pelanggan` VARCHAR(50) NOT NULL DEFAULT '',
    `alamat` VARCHAR(100) NOT NULL DEFAULT '',
    `email` VARCHAR(50) NOT NULL DEFAULT '',
    `no_telepon` VARCHAR(15) NOT NULL,
    PRIMARY KEY (`id_pelanggan`)
)

-- Membuat tabel kategori_barang
CREATE TABLE kategori_barang (
    `id_kategori` INT NOT NULL AUTO_INCREMENT,
    `nama_kategori` VARCHAR(50) NOT NULL DEFAULT '',
    `deskripsi` VARCHAR(100) NOT NULL DEFAULT '',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_kategori`)
)

-- Membuat tabel barang
CREATE TABLE barang (
    `id_barang` INT NOT NULL AUTO_INCREMENT,
    `nama_barang` VARCHAR(50) NOT NULL DEFAULT '',
    `harga` INT NOT NULL,
    `jumlah_barang` INT NOT NULL DEFAULT 0,
    `id_kategori` INT NOT NULL,
    PRIMARY KEY (`id_barang`),
    CONSTRAINT `id_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_barang` (`id_kategori`) ON UPDATE CASCADE ON DELETE CASCADE
)

-- Membuat tabel pesanan
CREATE TABLE pesanan (
    `id_pesanan` INT NOT NULL AUTO_INCREMENT,
    `id_pelanggan` INT NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id_pesanan`),
    CONSTRAINT `id_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON UPDATE CASCADE ON DELETE CASCADE
)

-- Membuat tabel barang_pesanan
CREATE TABLE barang_pesanan (
    `id_barang_pesanan` INT NOT NULL AUTO_INCREMENT,
    `id_pesanan` INT NOT NULL,
    `id_barang` INT NOT NULL,
    `jumlah_pesanan` INT NOT NULL DEFAULT 1,
    PRIMARY KEY (`id_barang_pesanan`),
    CONSTRAINT `id_pesanan` FOREIGN KEY (`id_pesanan`) REFERENCES `pesanan` (`id_pesanan`) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT `id_barang` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON UPDATE CASCADE ON DELETE CASCADE
)


