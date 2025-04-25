import 'package:flutter/material.dart';

class SplitBillScreen extends StatefulWidget {
  const SplitBillScreen({super.key});

  @override
  State<SplitBillScreen> createState() => _SplitBillScreenState();
}

class _SplitBillScreenState extends State<SplitBillScreen> {
  int totalBill = 0;
  int jumlahOrang = 0;
  double jumlahPembayaranPerOrang = 0;

  final TextEditingController totalBillController = TextEditingController();
  final TextEditingController jumlahOrangController = TextEditingController();

  String hasilPembayaran = "";

  @override
  void dispose() {
    totalBillController.dispose();
    jumlahOrangController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Aplikasi Hitung Split Bill",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                _buildInputField(
                  controller: totalBillController,
                  hintText: "Total bill",
                  icon: Icons.monetization_on,
                  onChanged: (value) {
                    totalBill = int.tryParse(value) ?? 0;
                  },
                ),
                _buildInputField(
                  controller: jumlahOrangController,
                  hintText: "Jumlah orang",
                  icon: Icons.group,
                  onChanged: (value) {
                    jumlahOrang = int.tryParse(value) ?? 0;
                  },
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        if (jumlahOrang != 0) {
                          jumlahPembayaranPerOrang = totalBill / jumlahOrang;
                        } else {
                          jumlahPembayaranPerOrang = 0;
                        }
                        hasilPembayaran =
                            "${jumlahPembayaranPerOrang.toStringAsFixed(0)} /orang";
                      });
                    },
                    child: const Text(
                      "Hitung Pembayaran",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                _buildDisabledField(
                  text: hasilPembayaran,
                  hintText: "Jumlah yang dibayar",
                  icon: Icons.money,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    required Function(String) onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon),
          border: const OutlineInputBorder(),
        ),
        keyboardType: TextInputType.number,
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildDisabledField({
    required String text,
    required String hintText,
    required IconData icon,
  }) {
    return TextField(
      enabled: false,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
      ),
      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      controller: TextEditingController(text: text),
    );
  }
}
