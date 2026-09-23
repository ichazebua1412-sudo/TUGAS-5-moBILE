import 'package:flutter/material.dart';

class PackageModel {
  final String id;
  final String title;
  final String subtitle;
  final String price;
  final String unit;
  final String description;
  final List<String> features;
  final IconData icon;
  final bool isRecommended;
  final Color themeColor;

  const PackageModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.unit,
    required this.description,
    required this.features,
    required this.icon,
    this.isRecommended = false,
    this.themeColor = const Color(0xFF1976D2),
  });

  // Contoh data dummy 3 paket sesuai requirement Tugas #4 (ListView 3 cards)
  static List<PackageModel> getDummyPackages() {
    return [
      const PackageModel(
        id: 'pkg-2',
        title: 'Paket Profesional',
        subtitle: 'Solusi lengkap untuk Bisnis IT Anda.',
        price: 'Rp 5.000.000',
        unit: ' / proyek',
        description:
            'Layanan komprehensif untuk digitalisasi proses bisnis Anda. Mencakup arsitektur frontend dan backend yang teruji serta database terintegrasi.',
        features: [
          'Desain UI/UX Khusus',
          'Setup Database',
          'Maintenance 1 Bulan',
        ],
        icon: Icons.laptop_chromebook,
        isRecommended: true,
        themeColor: Color(0xFF2979FF),
      ),
      const PackageModel(
        id: 'pkg-1',
        title: 'Paket Starter',
        subtitle: 'Solusi dasar untuk portofolio & landing page personal.',
        price: 'Rp 1.500.000',
        unit: ' / proyek',
        description:
            'Paket ideal untuk perorangan atau UMKM pemula yang membutuhkan kehadiran digital secara cepat dan profesional dengan performa optimal.',
        features: [
          'Desain Responsif 1 Halaman',
          'Integrasi Kontak WhatsApp & Email',
          'Domain & Hosting Setup',
        ],
        icon: Icons.rocket_launch_outlined,
        isRecommended: false,
        themeColor: Color(0xFF0288D1),
      ),
      const PackageModel(
        id: 'pkg-3',
        title: 'Paket Enterprise',
        subtitle: 'Solusi skala industri & integrasi sistem lanjutan.',
        price: 'Rp 12.000.000',
        unit: ' / proyek',
        description:
            'Dirancang untuk perusahaan yang membutuhkan ketersediaan tinggi (high availability), keamanan data berlapis, dan SLA dukungan teknis 24/7.',
        features: [
          'Arsitektur Multi-Service & API',
          'Keamanan & Backup Otomatis',
          'Dukungan SLA 24/7 & Training Tim',
        ],
        icon: Icons.domain_outlined,
        isRecommended: false,
        themeColor: Color(0xFF388E3C),
      ),
    ];
  }
}
