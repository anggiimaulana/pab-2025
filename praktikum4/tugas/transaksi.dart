import 'customer.dart';
import 'operator.dart';
import 'pizza.dart';
import 'topping.dart';

class Transaksi {
  static int counter = 0;
  int _nomor;
  num _total = 0;
  List<Pizza> _pizza = [];
  Operator? _operator;
  Customer _customer;

  Transaksi(String idCustomer, String nama)
    : _customer = Customer(idCustomer, nama),
      _nomor = ++counter;

  void addPizza(Pizza pizza, int qty) {
    if (qty <= 0) {
      throw Exception("Jumlah pizza harus lebih dari 0");
    }
    for (int i = 0; i < qty; i++) {
      _pizza.add(pizza);
    }
  }

  void updatePizza(int index, Topping topping) {
    try {
      if (index < 0 || index >= _pizza.length) {
        throw RangeError('Index pizza tidak valid: $index');
      }
      _pizza[index].addTopping(topping);
    } catch (e) {
      print('Error: ${e}');
    }
  }

  void deletePizza(int index) {
    try {
      if (index < 0 || index >= _pizza.length) {
        throw RangeError('Index pizza tidak valid: $index');
      }
      _pizza.removeAt(index);
    } catch (e) {
      print('Error: ${e}');
    }
  }

  void checkout(Operator operator) {
    if (_pizza.isEmpty) {
      throw Exception(
        "Transaksi tidak dapat dilakukan karena tidak ada pizza yang dipesan",
      );
    }
    _operator = operator;
    hitungTotal();
  }

  void hitungTotal() {
    _total = _pizza.fold(0, (sum, p) => sum + p.getHargaPizza());
  }

  num get total => _total;
  int get nomor => _nomor;
  List<Pizza> get pizza => _pizza;
  Customer get customer => _customer;
  Operator? get operator => _operator;
}
