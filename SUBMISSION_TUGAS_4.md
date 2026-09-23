# Laporan Tugas Praktikum 4: Routing, Stack Navigation & State Interaktif

**Software Engineering Division — Mobile Developer**  
**Program Studi Teknologi Informasi — Kelas T3D**  
**Fakultas Ilmu Komputer, Universitas Brawijaya**

---

## 📋 Identitas Mahasiswa

| Field | Keterangan |
| :--- | :--- |
| **Nama Lengkap** | Diego Armando Ramadhan |
| **NIM** | 253140701111062 |
| **Kelas** | T3D |
| **Mata Kuliah** | Pemrograman Mobile |
| **Modul** | Tugas #4: Routing & Navigation Antar Screen |

---

## 🎯 Evaluasi Rubrik & Scope of Work

| No | Kriteria Penilaian | Target Scope of Work | Bukti Implementasi pada Kode |
| :-: | :--- | :--- | :--- |
| **1** | **Screen 1 (Katalog)** | Wajib `StatelessWidget`, menampilkan `ListView` berisi 3 `Card` interaktif. | Terpenuhi pada `lib/screens/catalog_screen.dart` dengan 3 kartu paket IT. |
| **2** | **Navigasi Stack** | Menggunakan `Navigator.push` untuk perpindahan dari Screen 1 ke Screen 2. | Terpenuhi melalui event `onTap` pada `ListTile` kartu katalog. |
| **3** | **Screen 2 (Detail)** | Wajib `StatefulWidget` dengan tata letak vertikal `Column`. | Terpenuhi pada `lib/screens/detail_screen.dart`. |
| **4** | **Kotak Pastel Deskripsi** | `Container` warna pastel dengan padding sebagai tempat deskripsi/bio. | Terpenuhi menggunakan warna pastel mint (`#E8F5E9`) dan padding `16dp`. |
| **5** | **Tombol Kembali Otomatis** | `AppBar` dengan tombol kembali bawaan (`Navigator.pop`). | Terpenuhi pada `AppBar` di `DetailScreen`. |
| **6** | **Mutasi State Interaktif** | Perubahan state pada tombol interaktif menggunakan `setState`. | Terpenuhi pada tombol counter pesanan dan bookmark di `DetailScreen`. |
| **7** | **Fitur Navigasi Tambahan** | Bilah Navigasi Bawah (*Bottom Navigation Bar*). | Terpenuhi menggunakan Material 3 `NavigationBar` di `lib/screens/main_screen.dart`. |

---

## 📸 Dokumentasi & Bukti Pengujian Tampilan Antarmuka (UI)

### 1. Tampilan Screen 1: Beranda / Katalog (`StatelessWidget`)
> **Spesifikasi:** Menampilkan `AppBar`, `ListView` yang dapat di-*scroll* berisi 3 buah kartu vertikal (`PricingCard`) paket layanan IT (Paket Starter, Paket Profesional dengan badge Rekomendasi, dan Paket Enterprise), serta `NavigationBar` Material 3 di bagian bawah (Tab Katalog, Tersimpan, Profil). Setiap kartu memuat ikon, judul, rincian harga, daftar checklist fitur (✓), dan tombol interaktif *"Pilih Paket"*.

```text
+-------------------------------------------------------+
|  Katalog Layanan IT                                   |
+-------------------------------------------------------+
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
|  (Dapat digulir ke Paket Enterprise...)               |
+-------------------------------------------------------+
|   [ (⊞) Katalog ]     [ (🔖) Tersimpan ]    [ (👤) Profil ]   |
+-------------------------------------------------------+
```
*(Lampirkan tangkapan layar `catalog_screen` di sini saat ekspor PDF)*

---

### 2. Navigasi Antar Halaman (`Navigator.push`)
> **Spesifikasi:** Pengguna menekan kartu *Paket Profesional*. Aplikasi melakukan transisi animasi tumpukan (*Stack Navigation*) menuju `DetailScreen` secara mulus.

---

### 3. Tampilan Screen 2: Detail Layanan (`StatefulWidget`)
> **Spesifikasi:** Tata letak vertikal `Column` dengan rincian nama paket, harga, kontainer berlatar warna pastel (`#E8F5E9`) untuk deskripsi paket, checklist layanan termasuk, serta tombol aksi *"Pesan Sekarang"*. `AppBar` otomatis memuat tombol panah kembali (*back button*).

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
|  [               🛒 Pesan Sekarang                 ]  |
+-------------------------------------------------------+
```
*(Lampirkan tangkapan layar `detail_screen` di sini saat ekspor PDF)*

---

### 4. Demonstrasi Perubahan State Interaktif (`setState`)
> **Spesifikasi:** Ketika tombol *"Pesan Sekarang"* diklik, teks dan status berubah secara dinamis menjadi *"Berhasil Dipesan (1 Paket)"*. Ketika ikon bookmark di `AppBar` ditekan, ikon berubah menjadi terisi (*solid*) dan menampilkan `SnackBar` konfirmasi.

```text
[               🛒 Berhasil Dipesan (1 Paket)        ]
```
*(Lampirkan tangkapan layar perubahan tombol dan SnackBar di sini)*

---

### 5. Tampilan Tab Profil Pengembang Mahasiswa
> **Spesifikasi:** Tab ketiga pada `NavigationBar` menampilkan kartu identitas mahasiswa pengembang aplikasi.

```text
+-------------------------------------------------------+
|  Profil Pengembang                                    |
+-------------------------------------------------------+
|                     ( 👤 )                            |
|               Icha Desmayni Zebua                     |
|              NIM: 253140701111055                     |
|           [ Kelas T3D • Mobile Developer ]            |
|                                                       |
|  Informasi Akademik:                                  |
|  [🏫] Universitas  : Universitas Brawijaya            |
|  [💻] Mata Kuliah  : Pemrograman Mobile (T3D)         |
|  [📝] Modul        : Tugas #4 - Routing & Navigation  |
+-------------------------------------------------------+
```
*(Lampirkan tangkapan layar `profile_screen` di sini)*

---

## 🧪 Bukti Pengujian Otomatis

### 1. Statik Analisis (`flutter analyze`)
```text
Resolving dependencies...
Analyzing mobile-T3D...
No issues found! (ran in 1.7s)
```

### 2. Widget Testing (`flutter test`)
```text
00:00 +0: loading test/widget_test.dart
00:00 +0: Smoke test render app, bottom navbar, and catalog
00:01 +1: All tests passed!
```

---

## 🌳 Struktur Folder Tree Proyek

```text
mobile-T3D/
├── lib/
│   ├── models/
│   │   ├── package_model.dart
│   │   └── user_model.dart
│   ├── screens/
│   │   ├── catalog_screen.dart
│   │   ├── detail_screen.dart
│   │   ├── main_screen.dart
│   │   ├── profile_screen.dart
│   │   ├── pricing_screen.dart
│   │   └── saved_screen.dart
│   ├── widgets/
│   │   └── pricing_card.dart
│   └── main.dart
├── test/
│   └── widget_test.dart
├── pubspec.yaml
├── README.md
└── SUBMISSION_TUGAS_4.md
```

---

## 🔗 Tautan Repositori GitHub

* **Tautan GitHub:** [https://github.com/stanlevv/mobile-T3D](https://github.com/stanlevv/mobile-T3D)
