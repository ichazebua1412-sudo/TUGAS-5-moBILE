# Laporan Tugas Praktikum #4: Routing & Navigation Antar Screen

**Software Engineering Division — Mobile Developer**  
**Program Studi Teknologi Informasi — Kelas T3D**  
**Fakultas Ilmu Komputer, Universitas Brawijaya**

---

## 📋 1. Identitas Mahasiswa

| Field | Keterangan |
| :--- | :--- |
| **Nama Lengkap** | Diego Armando Ramadhan |
| **NIM** | 253140701111062 |
| **Kelas** | T3D |
| **Mata Kuliah** | Pemrograman Mobile |
| **Modul** | Tugas #4: Routing & Navigation Antar Screen |

---

## 🎯 2. Evaluasi Rubrik & Pemenuhan Scope of Work

| No | Kriteria Rubrik | Target Scope of Work | Bukti Implementasi pada Kode |
| :-: | :--- | :--- | :--- |
| **a** | **Screen 1 (Katalog)** | Wajib `StatelessWidget`, menampilkan `ListView` berisi 3 `Card` interaktif. | Terpenuhi pada `lib/screens/catalog_screen.dart` dengan 3 kartu paket IT. |
| **b** | **Navigasi Stack** | Menggunakan `Navigator.push` untuk perpindahan dari Screen 1 ke Screen 2. | Terpenuhi melalui event `onTap` pada tombol *"Pilih Paket"*. |
| **c** | **Screen 2 (Detail)** | Wajib `StatefulWidget` dengan tata letak vertikal `Column`. | Terpenuhi pada `lib/screens/detail_screen.dart`. |
| **d** | **Kotak Pastel Deskripsi** | `Container` warna pastel dengan padding sebagai tempat deskripsi/bio. | Terpenuhi menggunakan warna pastel mint (`#E8F5E9` & border `#C8E6C9`) dan padding `16dp`. |
| **e** | **Tombol Kembali Otomatis** | `AppBar` dengan tombol kembali bawaan (`Navigator.pop`). | Terpenuhi pada `AppBar` di `DetailScreen`. |
| **f** | **Mutasi State Interaktif** | Perubahan state pada tombol interaktif menggunakan `setState`. | Terpenuhi pada counter kuantitas, toggle support tambahan, total biaya dinamis, dan dialog pesanan. |

---

## 📸 3. Dokumentasi & Bukti Pengujian Tampilan Antarmuka (UI)

### A. Tampilan Screen 1: Beranda / Katalog (`StatelessWidget`)
> **Spesifikasi:** Menampilkan `AppBar`, `ListView` yang dapat di-*scroll* berisi 3 buah kartu vertikal (`PricingCard`) paket layanan IT (Paket Starter, Paket Profesional dengan badge Rekomendasi, dan Paket Enterprise). Setiap kartu memuat ikon, judul, rincian harga, daftar checklist fitur (✓), dan tombol interaktif *"Pilih Paket"*.

```text
+-------------------------------------------------------+
|  Katalog Layanan IT                                   |
+-------------------------------------------------------+
|  +-------------------------------------------------+  |
|  | [💻]                             [Rekomendasi]  |  |
|  | Paket Profesional                               |  |
|  | Solusi lengkap untuk Bisnis IT Anda             |  |
|  | Rp 5.000.000 / proyek                           |  |
|  | ✓ Desain UI/UX Khusus                           |  |
|  | ✓ Setup Database                                |  |
|  | ✓ Maintenance 1 Bulan                           |  |
|  | [                 Pilih Paket                 ] |  |
|  +-------------------------------------------------+  |
|                                                       |
|  +-------------------------------------------------+  |
|  | [🚀]                                            |  |
|  | Paket Starter                                   |  |
|  | Solusi dasar untuk portofolio & landing page    |  |
|  | Rp 1.500.000 / proyek                           |  |
|  | ✓ Desain Responsif 1 Halaman                    |  |
|  | ✓ Integrasi Kontak WhatsApp & Email             |  |
|  | ✓ Domain & Hosting Setup                        |  |
|  | [                 Pilih Paket                 ] |  |
|  +-------------------------------------------------+  |
|                                                       |
|  (Dapat digulir ke Paket Enterprise...)               |
+-------------------------------------------------------+
```
*(Lampirkan tangkapan layar `catalog_screen` di sini saat ekspor PDF)*

---

### B. Navigasi Antar Halaman (`Navigator.push`)
> **Spesifikasi:** Pengguna menekan kartu atau tombol *"Pilih Paket"*. Aplikasi melakukan transisi animasi tumpukan (*Stack Navigation*) menuju `DetailScreen` secara mulus.

---

### C. Tampilan Screen 2: Detail Layanan (`StatefulWidget`)
> **Spesifikasi:** Tata letak vertikal `Column` dengan rincian nama paket, harga satuan, kontainer berlatar warna pastel (`#E8F5E9`) untuk deskripsi paket, checklist layanan termasuk, counter kuantitas, toggle support tambahan, serta tombol aksi *"Pesan Sekarang"*. `AppBar` otomatis memuat tombol panah kembali (*back button*).

```text
+-------------------------------------------------------+
|  <-  Paket Profesional                          [🔖]  |
+-------------------------------------------------------+
|  [💻] Paket Profesional                               |
|       Solusi lengkap untuk Bisnis IT Anda             |
|                                                       |
|  Rp 5.000.000 / proyek                                |
|                                                       |
|  +-------------------------------------------------+  |
|  | Deskripsi Paket (Warna Pastel Hijau Mint)       |  |
|  | Layanan komprehensif untuk digitalisasi proses  |  |
|  | bisnis Anda. Mencakup arsitektur frontend dan   |  |
|  | backend yang teruji serta database terintegrasi.|  |
|  +-------------------------------------------------+  |
|                                                       |
|  Layanan Termasuk:                                    |
|  [✓] Desain UI/UX Khusus                              |
|  [✓] Setup Database                                   |
|  [✓] Maintenance 1 Bulan                              |
|                                                       |
|  +-------------------------------------------------+  |
|  | Jumlah Paket: [-] 1 [+]                         |  |
|  | Support Prioritas 24/7 (+Rp 250.000) [ON/OFF]   |  |
|  | Total Biaya: Rp 5.000.000                       |  |
|  +-------------------------------------------------+  |
|                                                       |
|  [         🛒 Pesan Sekarang (Rp 5.000.000)        ]  |
+-------------------------------------------------------+
```
*(Lampirkan tangkapan layar `detail_screen` di sini saat ekspor PDF)*

---

### D. Demonstrasi Perubahan State Interaktif (`setState`)
> **Spesifikasi:** Ketika kuantitas atau switch support diubah, total harga terhitung secara dinamis dan real-time. Ketika tombol *"Pesan Sekarang"* ditekan, muncul modal dialog konfirmasi pemesanan.

---

## 🌳 4. Struktur Direktori Proyek

```text
mobile-T3D/
├── lib/
│   ├── models/
│   │   └── package_model.dart       # Model data & 3 dummy packages
│   ├── screens/
│   │   ├── catalog_screen.dart      # Screen 1: StatelessWidget (ListView 3 cards)
│   │   └── detail_screen.dart       # Screen 2: StatefulWidget (Column + Pastel box + setState)
│   ├── widgets/
│   │   └── pricing_card.dart        # Reusable card component
│   └── main.dart                    # Entry point aplikasi (Material 3)
├── pubspec.yaml                     # Konfigurasi dependensi Flutter
└── README.md                        # Panduan instalasi dan dokumentasi teknis
```

---

## 🔗 5. Tautan Repositori GitHub

* **URL Repositori GitHub**: [https://github.com/stanlevv/mobile-T3D](https://github.com/stanlevv/mobile-T3D)
