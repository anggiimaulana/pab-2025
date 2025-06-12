import 'package:counter_app/payment/login_screen.dart';
import 'package:counter_app/payment/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class SplitBillScreen extends StatefulWidget {
  const SplitBillScreen({super.key});

  @override
  State<SplitBillScreen> createState() => _SplitBillScreenState();
}

class _SplitBillScreenState extends State<SplitBillScreen> {
  int totalBill = 0;
  int jumlahOrang = 0;
  double jumlahPembayaranPerOrang = 0;
  String hasilPembayaran = "";

  SharedPreferences? pref;

  final TextEditingController totalBillController = TextEditingController();
  final TextEditingController jumlahOrangController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initSharedPreferences();
  }

  Future<void> _initSharedPreferences() async {
    pref = await SharedPreferences.getInstance();
    logger.i("SharedPreferences loaded di SplitBillScreen");
  }

  @override
  void dispose() {
    totalBillController.dispose();
    jumlahOrangController.dispose();
    super.dispose();
  }

  void _hitungPembayaran() {
    setState(() {
      totalBill = int.tryParse(totalBillController.text) ?? 0;
      jumlahOrang = int.tryParse(jumlahOrangController.text) ?? 0;

      logger.d("Input total: $totalBill, jumlah orang: $jumlahOrang");

      if (jumlahOrang > 0 && totalBill > 0) {
        jumlahPembayaranPerOrang = totalBill / jumlahOrang;
        hasilPembayaran =
            "${jumlahPembayaranPerOrang.toStringAsFixed(0)} / orang";

        pref?.setInt("totalBill", totalBill);
        logger.i(
          "Pembayaran dihitung: $hasilPembayaran disimpan ke SharedPreferences",
        );
      } else {
        hasilPembayaran = "Input tidak valid";
        logger.w("Input tidak valid: total=$totalBill, orang=$jumlahOrang");
      }
    });
  }

  Future<void> _logout() async {
    final pref = await SharedPreferences.getInstance();
    await pref.clear();
    logger.i("User logout, SharedPreferences dibersihkan");

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
    );
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
        actions: [
          IconButton(
            icon: const Icon(Icons.person, color: Colors.white),
            onPressed: () {
              logger.i("Navigasi ke halaman profil");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProfileScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: _logout,
          ),
        ],
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
                    logger.d("Input total bill: $value");
                  },
                ),
                _buildInputField(
                  controller: jumlahOrangController,
                  hintText: "Jumlah orang",
                  icon: Icons.group,
                  onChanged: (value) {
                    jumlahOrang = int.tryParse(value) ?? 0;
                    logger.d("Input jumlah orang: $value");
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
                    onPressed: _hitungPembayaran,
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
                _buildResultField(
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

  Widget _buildResultField({
    required String text,
    required String hintText,
    required IconData icon,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black54),
          const SizedBox(width: 10),
          Expanded(child: Text(text.isEmpty ? hintText : text)),
        ],
      ),
    );
  }
}
