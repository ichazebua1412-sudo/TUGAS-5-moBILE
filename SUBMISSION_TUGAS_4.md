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
| **Mata Kuliah** | Pemrograman Mobile (Mobile Developer) |
| **Modul** | Tugas #4: Routing & Navigation Antar Screen |

---

## 🎯 2. Evaluasi Rubrik & Pemenuhan Scope of Work Tugas #4

| No | Requirement Scope of Work (Tugas #4) | Status | Bukti Implementasi pada Kode |
| :-: | :--- | :---: | :--- |
| **a** | **Screen 1 (Beranda / Katalog)** wajib `StatelessWidget` dengan `ListView` 3 cards dan tombol yang bisa diklik. | ✅ Terpenuhi | `lib/screens/catalog_screen.dart` mengimplementasikan `StatelessWidget` dengan `ListView.builder` merender 3 `PricingCard` (Paket Starter, Profesional, dan Enterprise). |
| **b** | **Navigasi Stack (`Navigator.push`)** untuk perpindahan Screen 1 ke Screen 2. | ✅ Terpenuhi | Tombol *"Pilih Paket"* memicu `Navigator.push` dengan `MaterialPageRoute` dan mengirimkan objek model (`package`) ke `DetailScreen`. |
| **c** | **Screen 2 (Detail Katalog)** wajib tata letak vertikal `Column` & `StatefulWidget`. | ✅ Terpenuhi | `lib/screens/detail_screen.dart` berupa `StatefulWidget` dengan layout vertikal `Column` dalam `SingleChildScrollView`. |
| **d** | **Elemen Visual Screen 2**: <br>• Icon back kembali ke Screen 1<br>• Text nama katalog & harga<br>• Container warna pastel & padding deskripsi | ✅ Terpenuhi | • `AppBar` otomatis memuat icon panah kembali (`Navigator.pop`).<br>• Text judul, subjudul, dan harga satuan.<br>• `Container` warna pastel hijau mint (`#E8F5E9` & border `#C8E6C9`) dengan padding `16dp`. |
| **e** | **Struktur Aplikasi**: `AppBar` agar fungsi tombol "Kembali" bawaan otomatis tersedia. | ✅ Terpenuhi | `AppBar(title: Text(package.title))` dengan default back button Material 3. |
| **f** | **Implementasi Konsep Event & State** | ✅ Terpenuhi | Perubahan state interaktif tombol via `setState` pada kuantitas pemesanan, toggle support prioritas, total biaya, dan bookmark. |

---

## 📱 3. Dokumentasi Tampilan Antarmuka Mobile (Screenshots & Keterangan)

### 📸 Tampilan 1: Screen 1 — Katalog Layanan IT (`StatelessWidget`)
> **Keterangan Alur**: Layar utama menampilkan daftar 3 kartu vertikal paket layanan IT dengan `ListView` yang dapat di-*scroll*. Setiap kartu memiliki ikon, nama paket, deskripsi, harga, daftar fitur dengan tanda centang (✓), serta tombol *"Pilih Paket"*.

```text
 ┌─────────────────────────────────────────┐
 │  09:41              📶  📡  🔋 100%     │
 ├─────────────────────────────────────────┤
 │  Katalog Layanan IT                     │
 ├─────────────────────────────────────────┤
 │                                         │
 │  ┌───────────────────────────────────┐  │
 │  │ 💻                 [ Rekomendasi ]│  │
 │  │ Paket Profesional                 │  │
 │  │ Solusi lengkap untuk Bisnis IT    │  │
 │  │ Rp 5.000.000 / proyek             │  │
 │  │  ✓ Desain UI/UX Khusus            │  │
 │  │  ✓ Setup Database                 │  │
 │  │  ✓ Maintenance 1 Bulan            │  │
 │  │ [           Pilih Paket         ] │  │
 │  └───────────────────────────────────┘  │
 │                                         │
 │  ┌───────────────────────────────────┐  │
 │  │ 🚀                                │  │
 │  │ Paket Starter                     │  │
 │  │ Solusi dasar untuk portofolio     │  │
 │  │ Rp 1.500.000 / proyek             │  │
 │  │  ✓ Desain Responsif 1 Halaman     │  │
 │  │  ✓ Integrasi Kontak WhatsApp      │  │
 │  │ [           Pilih Paket         ] │  │
 │  └───────────────────────────────────┘  │
 │                                         │
 └─────────────────────────────────────────┘
```

---

### 📸 Tampilan 2: Navigasi Antar Halaman (`Navigator.push`)
> **Keterangan Alur**: Saat pengguna menekan kartu atau tombol *"Pilih Paket"*, aplikasi mengeksekusi `Navigator.push` untuk menumpuk `DetailScreen` di atas tumpukan navigasi secara mulus.

---

### 📸 Tampilan 3: Screen 2 — Detail Layanan (`StatefulWidget`)
> **Keterangan Alur**: Layar sekunder menampilkan judul paket, tombol panah kembali pada `AppBar`, rincian harga, kotak pastel hijau mint (`#E8F5E9`) untuk deskripsi, daftar layanan termasuk, kontrol kuantitas, dan tombol aksi *"Pesan Sekarang"*.

```text
 ┌─────────────────────────────────────────┐
 │  09:41              📶  📡  🔋 100%     │
 ├─────────────────────────────────────────┤
 │  ←  Paket Profesional             🔖    │
 ├─────────────────────────────────────────┤
 │                                         │
 │  💻 Paket Profesional                   │
 │     Solusi lengkap untuk Bisnis IT Anda │
 │                                         │
 │  Rp 5.000.000 / proyek                  │
 │                                         │
 │  ┌───────────────────────────────────┐  │
 │  │ ℹ️ Deskripsi Paket (Pastel Mint)   │  │
 │  │ Layanan komprehensif digitalisasi │  │
 │  │ proses bisnis. Arsitektur frontend│  │
 │  │ & backend teruji serta database.  │  │
 │  └───────────────────────────────────┘  │
 │                                         │
 │  Layanan Termasuk:                      │
 │  ✓ Desain UI/UX Khusus                  │
 │  ✓ Setup Database                       │
 │  ✓ Maintenance 1 Bulan                  │
 │                                         │
 │  ┌───────────────────────────────────┐  │
 │  │ Jumlah Paket:        [-]  1  [+]  │  │
 │  │ Support Prioritas    (+250rb) [○] │  │
 │  │ Total Biaya:         Rp 5.000.000 │  │
 │  └───────────────────────────────────┘  │
 │                                         │
 │ [    🛒 Pesan Sekarang (Rp 5.000.000)   ]│
 └─────────────────────────────────────────┘
```

---

## 🌳 4. Struktur Direktori Proyek

```text
mobile-T3D/
├── lib/
│   ├── models/
│   │   └── package_model.dart       # Model data & dummy generator
│   ├── screens/
│   │   ├── catalog_screen.dart      # Screen 1: StatelessWidget (ListView 3 cards)
│   │   └── detail_screen.dart       # Screen 2: StatefulWidget (Column + Pastel box + setState)
│   ├── widgets/
│   │   └── pricing_card.dart        # Reusable card component (Tugas #3)
│   └── main.dart                    # Entry point aplikasi (Material 3 Theme)
├── pubspec.yaml                     # Konfigurasi dependensi Flutter
└── README.md                        # Panduan instalasi dan dokumentasi teknis
```

---

## 🔗 5. Tautan Repositori GitHub

* **URL Repositori GitHub**: [https://github.com/stanlevv/mobile-T3D](https://github.com/stanlevv/mobile-T3D)
