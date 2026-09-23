import 'package:flutter/material.dart';
import '../models/package_model.dart';
import '../widgets/pricing_card.dart';
import 'detail_screen.dart';

// Screen 1 (Beranda / Katalog): Wajib menggunakan StatelessWidget (Scope of Work Tugas #4)
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PackageModel> packages = PackageModel.getDummyPackages();

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Katalog Layanan IT'),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF212121),
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        itemCount: packages.length,
        itemBuilder: (context, index) {
          final package = packages[index];

          return Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: PricingCard(
                package: package,
                onSelect: () {
                  // Navigasi: Perpindahan dari Screen 1 ke Screen 2 menggunakan Navigator.push
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(package: package),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
