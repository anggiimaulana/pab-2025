import 'package:app_produk/api_service.dart';
import 'package:flutter/material.dart';

class ProdukProvider with ChangeNotifier {
  List _products = [];
  bool _isLoading = false;

  List get products => _products;
  bool get isLoading => _isLoading;

  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  void setProducts(List data) {
    _products = data;
    notifyListeners();
  }

  Future<void> fetchProducts() async {
    setLoading(true);
    try {
      final data = await ApiService().getData();
      setProducts(data);
    } catch (e) {
      // Handle error
    } finally {
      setLoading(false);
    }
  }

  Future<bool> tambahProduk(Map<String, dynamic> data) async {
    try {
      final result = await ApiService().tambahProduk(data);
      if (result) {
        await fetchProducts(); 
      }
      return result;
    } catch (e) {
      return false;
    }
  }

  Future<bool> ubahProduk(Map<String, dynamic> data) async {
    try {
      final result = await ApiService().ubahProduk(data);
      if (result) {
        await fetchProducts();
      }
      return result;
    } catch (e) {
      // Handle error
      return false;
    }
  }
}
