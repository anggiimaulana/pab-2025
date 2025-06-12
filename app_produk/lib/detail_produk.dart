import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailProduk extends StatelessWidget {
  final Map mapData;
  const DetailProduk({super.key, required this.mapData});

  String formatHarga(String harga) {
    try {
      final number = int.tryParse(harga) ?? 0;
      return NumberFormat.currency(
        locale: 'id_ID',
        symbol: 'Rp ',
      ).format(number);
    } catch (_) {
      return harga;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Produk",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailItem("ID Produk", mapData["idProduk"]),
                const Divider(),
                _buildDetailItem("Nama Produk", mapData["namaProduk"]),
                const Divider(),
                _buildDetailItem(
                  "Harga Produk",
                  formatHarga(mapData["hargaProduk"]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailItem(String title, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(value ?? "-", style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
