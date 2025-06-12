import 'dart:convert';

import 'package:app_produk/api_service.dart';
import 'package:app_produk/detail_produk.dart';
import 'package:app_produk/main.dart';
import 'package:app_produk/tambah_produk.dart';
import 'package:app_produk/ubah_produk.dart';
import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class HalamanProduk extends StatefulWidget {
  const HalamanProduk({super.key});

  @override
  State<HalamanProduk> createState() => _HalamanProdukState();
}

class _HalamanProdukState extends State<HalamanProduk> {
  List _listData = [];
  bool _loading = true;
  final logger = Logger();
  final url = ApiService().baseUrl;
  final formatCurrency = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp');

  Future _getData() async {
    try {
      final respon = await http.get(Uri.parse('$url/read.php'));
      if (respon.statusCode == 200) {
        final data = jsonDecode(respon.body);
        setState(() {
          _listData = data;
          _loading = false;
        });
      }
    } catch (e) {
      logger.e("Kesalahan terjadi: $e");
    }
  }

  Future _hapusData(String? id) async {
    try {
      final respon = await http.post(
        Uri.parse('$url/delete.php'),
        body: {"id_produk": id!},
      );
      if (respon.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      logger.e("Kesalahan terjadi: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Produk", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo,
      ),
      body:
          _loading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: _listData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => DetailProduk(
                                    mapData: {
                                      "idProduk": _listData[index]['id_produk'],
                                      "namaProduk":
                                          _listData[index]['nama_produk'],
                                      "hargaProduk":
                                          _listData[index]['harga_produk'],
                                    },
                                  ),
                            ),
                          );
                        },
                        child: ListTile(
                          title: Text(_listData[index]['nama_produk']),
                          subtitle: Text(
                            formatCurrency.format(
                              int.parse(_listData[index]['harga_produk']),
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => UbahProduk(
                                            mapData: {
                                              'idProduk':
                                                  _listData[index]['id_produk'],
                                              'namaProduk':
                                                  _listData[index]['nama_produk'],
                                              'hargaProduk':
                                                  _listData[index]['harga_produk'],
                                            },
                                          ),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.edit),
                              ),
                              IconButton(
                                onPressed: () {
                                  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text(
                                          'Anda yakin ingin menghapus data ini?',
                                        ),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.white,
                                            ),
                                            child: Text(
                                              "Batal",
                                              style: TextStyle(
                                                color: Colors.indigo,
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              _hapusData(
                                                _listData[index]['id_produk'],
                                              ).then((value) {
                                                Navigator.of(context).pop();
                                                if (value == true) {
                                                  scaffoldMessengerKey
                                                      .currentState!
                                                      .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            "Produk berhasil dihapus",
                                                          ),
                                                        ),
                                                      );
                                                } else {
                                                  scaffoldMessengerKey
                                                      .currentState!
                                                      .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            "Gagal menghapus produk",
                                                          ),
                                                        ),
                                                      );
                                                }
                                                showDialog(
                                                  barrierDismissible: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return const Center(
                                                      child:
                                                          CircularProgressIndicator(),
                                                    );
                                                  },
                                                );
                                                Navigator.pop(
                                                  context,
                                                ); // Menutup loading dialog

                                                navigatorKey.currentState!
                                                    .pushAndRemoveUntil(
                                                      MaterialPageRoute(
                                                        builder:
                                                            (context) =>
                                                                const HalamanProduk(),
                                                      ),
                                                      (route) => false,
                                                    );
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.indigo,
                                            ),
                                            child: Text(
                                              "Hapus",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                icon: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TambahProduk()),
          );
        },
        child: Text("+", style: TextStyle(fontSize: 24, color: Colors.white)),
      ),
    );
  }
}
