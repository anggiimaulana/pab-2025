import 'dart:convert';
import 'package:app_produk/api_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

import 'package:app_produk/halaman_produk.dart';
import 'package:app_produk/main.dart';

class TambahProduk extends StatefulWidget {
  const TambahProduk({super.key});

  @override
  State<TambahProduk> createState() => _TambahProdukState();
}

class _TambahProdukState extends State<TambahProduk> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController namaProduk = TextEditingController();
  final TextEditingController hargaProduk = TextEditingController();
  final Logger logger = Logger();
  final url = ApiService().baseUrl;

  Future<bool> tambah() async {
    try {
      final response = await http.post(
        Uri.parse('$url/create.php'),
        body: {
          'nama_produk': namaProduk.text,
          'harga_produk': hargaProduk.text,
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['success'] == true) {
          return true;
        }
      }

      return false;
    } catch (e) {
      logger.e('Terjadi kesalahan: $e');
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Tambah Produk',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Form(
        key: formKey,
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: namaProduk,
                  decoration: InputDecoration(
                    hintText: "Nama Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Nama produk tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: hargaProduk,
                  decoration: InputDecoration(
                    hintText: "Harga Produk",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Harga produk tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),

                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder:
                            (context) => const Center(
                              child: CircularProgressIndicator(),
                            ),
                      );
                      Navigator.pop(context); // Menutup loading dialog
                      final result = await tambah();
                      Navigator.pop(context); // tutup loading

                      if (result) {
                        scaffoldMessengerKey.currentState!.showSnackBar(
                          SnackBar(
                            content: Text("Produk berhasil ditambahkan"),
                          ),
                        );
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HalamanProduk(),
                          ),
                          (route) => false,
                        );
                      } else {
                        scaffoldMessengerKey.currentState!.showSnackBar(
                          SnackBar(content: Text("Gagal menambahkan produk")),
                        );
                      }
                    }
                  },
                  child: Text("Tambah", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
