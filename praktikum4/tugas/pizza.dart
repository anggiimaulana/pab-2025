import 'topping.dart';

class Pizza {
  // Hanya counter yang bersifat public:
  static int counter = 0;

  int? _idPizza;
  String? _namaPizza;
  num? _hargaPizza;
  Set<Topping> _topping = {};

  // Konstruktor
  Pizza(String namaPizza)
    : _idPizza = ++counter,
      _namaPizza = namaPizza,
      _hargaPizza = 0;

  // Setter & Getter
  void setNamaPizza(String namaPizza) => _namaPizza = namaPizza;
  String getNamaPizza() => _namaPizza ?? "No Pizza Name";

  void addTopping(Topping topping) => _topping.add(topping);
  void deleteTopping(Topping topping) => _topping.remove(topping);

  // Menghitung harga pizza berdasarkan semua topping
  num getHargaPizza() =>
      _topping.fold(0, (sum, item) => sum + item.getHargaTopping());

  // Menampilkan info pizza
  void showPizza() {
    print("Pizza: ${getNamaPizza()} (ID: $_idPizza)");
    print("Harga total: ${getHargaPizza()}");
    if (_topping.isEmpty) {
      print("Belum ada topping.");
    } else {
      print("Topping:");
      for (var t in _topping) {
        print("- ${t.getNamaTopping()} (${t.getHargaTopping()})");
      }
    }
  }
}
