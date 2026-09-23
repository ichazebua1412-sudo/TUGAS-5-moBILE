# CONTEXT.md - Domain Glossary (Tugas 4 & 5 Mobile & Web Framework T3D)

## Mobile Development Context (Flutter & UI/UX Design System)

### Screen 1 (Katalog / Beranda)
Layar utama aplikasi yang bertindak sebagai etalase entitas. Menampilkan daftar kartu item menggunakan tata letak daftar gulir. Sifat layar ini statis tanpa mutasi state internal.

### Screen 2 (Detail Katalog)
Layar sekunder yang menampilkan rincian entitas yang dipilih dari Screen 1. Memiliki kapabilitas reaktif untuk merespons interaksi pengguna dan memperbarui tampilan secara lokal.

### Stack Navigation (Navigasi Tumpukan)
Mekanisme perpindahan layar di mana layar baru ditumpuk di atas layar sebelumnya, memungkinkan pengguna menavigasi mundur ke layar asal melalui riwayat tumpukan.

### Bottom Navigation Bar (Bilah Navigasi Bawah)
Komponen navigasi horizontal tingkat atas yang menetap di bagian bawah viewport untuk perpindahan instan antar destinasi layar primer (Katalog, Tersimpan, Profil).

### Design Tokens
Entitas semantik bernama yang menyimpan keputusan desain visual (warna, tipografi, elevasi, padding) secara terpusat:
- **Reference Tokens (Tier 1)**: Nilai mentah palet warna global.
- **System / Semantic Tokens (Tier 2)**: Peran fungsional warna (misal: Primary, Surface, Error, On-Surface).
- **Component Tokens (Tier 3)**: Nilai spesifik untuk komponen tertentu (misal: Button-Background, Card-Elevation).

---

## Web Framework Context (Express.js & Next.js Fullstack Todo)

### Todo Item
Unit tugas pengguna yang dikelola secara persisten di basis data, memiliki identitas unik, keterikatan pemilik (user), teks deskripsi, dan status penyelesaian.

### Auth Guard (Middleware Autentikasi)
Lapisan inspeksi permintaan yang memverifikasi keabsahan kredensial token sebelum mengizinkan rute terproteksi diakses.

### Validator Middleware
Lapisan inspeksi payload permintaan untuk menjamin integritas data masukan sebelum diteruskan ke pengontrol logika bisnis.

### Unified Response Contract
Format standar struktur keluaran API yang seragam di seluruh endpoint (mencakup status keberhasilan, pesan, data payload, metadata paginasi, dan jejak audit waktu/request-id).
