import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  final String _baseUrl = "http://10.0.143.71/api_produk";

  String get baseUrl => _baseUrl;

  Future<List<dynamic>> getData() async {
    try {
      final response = await _dio.get('$_baseUrl/read.php');
      return response.data;
    } catch (e) {
      throw Exception("Gagal mengambil data: $e");
    }
  }

  Future<bool> hapusProduk(String id) async {
    try {
      final response = await _dio.post(
        '$_baseUrl/delete.php',
        data: {"id_produk": id},
      );
      return response.statusCode == 200;
    } catch (e) {
      throw Exception("Gagal menghapus produk: $e");
    }
  }

  Future<bool> tambahProduk(Map<String, dynamic> data) async {
    try {
      final response = await _dio.post('$_baseUrl/create.php', data: data);
      return response.statusCode == 200;
    } catch (e) {
      throw Exception("Gagal menambah produk: $e");
    }
  }

  Future<bool> ubahProduk(Map<String, dynamic> data) async {
    try {
      final response = await _dio.post('$_baseUrl/edit.php', data: data);
      return response.statusCode == 200;
    } catch (e) {
      throw Exception("Gagal mengubah produk: $e");
    }
  }
}
