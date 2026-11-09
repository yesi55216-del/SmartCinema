# LUMINE - Smart Cinema Experience

LUMINE adalah aplikasi web pemesanan tiket bioskop modern berbasis PHP dan JavaScript. Sistem ini dirancang untuk menangani alur pemesanan tiket mulai dari pemilihan jadwal, denah kursi interaktif, pemesanan makanan/minuman, hingga penerbitan tiket digital.

## Fitur Utama

- **Katalog Film & Pemilihan Jadwal**: Menampilkan daftar film tayang beserta filter genre, detail durasi, rating, serta jam tayang per studio (IMAX, Dolby, Regular).
- **Pemilihan Kursi Interaktif**: Denah lokasi kursi real-time dengan pembedaan tipe kursi (Regular dan VIP) serta validasi pencegahan pemesanan ganda.
- **Pemesanan Makanan & Minuman**: Fitur add-on snack dan minuman yang langsung terakumulasi ke dalam rincian pembayaran.
- **Sistem Promo & Diskon**:
  - Potongan harga otomatis berdasarkan hari libur nasional.
  - Diskon berbasis tingkatan keanggotaan (Silver, Gold, Platinum).
  - Dukungan klaim kode promo / voucher.
- **Garansi Tiket & Refund**: Proteksi tiket opsional yang memungkinkan pembatalan dan pengembalian dana hingga 1 jam sebelum penayangan.
- **Manajemen Akun & Riwayat**: Sistem autentikasi pengguna, penyimpanan tiket aktif, serta kalkulasi otomatis pembaruan tier member berdasarkan akumulasi transaksi.

## Struktur Berkas

- `cinema.php` - Antarmuka utama aplikasi (Single Page Application / Client MVP).
- `koneksi.php` - Konfigurasi koneksi database MySQL, sesi pengguna, dan helper JSON API.
- `register.php` - Endpoint autentikasi untuk pendaftaran akun pengguna baru.
- `login.php` - Endpoint autentikasi untuk verifikasi masuk pengguna.
- `movies.php` - Endpoint API untuk manajemen data film.

## Spesifikasi Teknis

- **Backend**: PHP 7.4+
- **Database**: MySQL / MariaDB (Database name: `cinema`)
- **Frontend**: Native HTML5, CSS3 (Custom CSS variables), Vanilla JavaScript (ES6+)
- **Font Integration**: Google Fonts (Sora & Inter)

## Panduan Instalasi

1. Salin seluruh file proyek ke dalam direktori web server (seperti `htdocs` pada XAMPP).
2. Buat database baru di MySQL dengan nama `cinema`.
3. Sesuaikan konfigurasi kredensial database pada file `koneksi.php` jika diperlukan:
   ```php
   $host = "localhost";
   $username = "root";
   $password = "";
   $database = "cinema";
