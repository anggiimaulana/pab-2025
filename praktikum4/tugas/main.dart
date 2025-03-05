import 'customer.dart';
import 'operator.dart';
import 'pizza.dart';
import 'topping.dart';
import 'transaksi.dart';

void main() {
  try {
    // Membuat operator
    Operator operator = Operator("John Doe", "OP123");

    // Membuat topping
    Topping kejuMozzarella = Topping(5000, "Keju Mozzarella");
    Topping sosis = Topping(7000, "Sosis");

    // Membuat pizza
    Pizza pizzaPepperoni = Pizza("Pepperoni");
    pizzaPepperoni.addTopping(kejuMozzarella);
    pizzaPepperoni.addTopping(sosis);

    Pizza pizzaMargherita = Pizza("Margherita");
    pizzaMargherita.addTopping(kejuMozzarella);

    // Membuat transaksi
    Transaksi transaksi = Transaksi("CUST001", "Alice");

    // Menambahkan pizza ke transaksi
    transaksi.addPizza(pizzaPepperoni, 1);
    transaksi.addPizza(pizzaMargherita, 1);

    // Contoh pemanggilan updatePizza dengan index yang salah (uncomment baris berikut untuk mengetes exception)
    transaksi.updatePizza(5, kejuMozzarella);

    // Melakukan checkout
    transaksi.checkout(operator);

    // Menampilkan hasil transaksi
    print("Customer: ${transaksi.customer.getNama()} - ID: ${transaksi.customer.getIdCustomer()}");
    print("Operator: ${transaksi.operator!.getNama()} - ID: ${transaksi.operator!.getIdOperator()}");

    for (var pizza in transaksi.pizza) {
      pizza.showPizza();
    }

    print("Total transaksi: ${transaksi.total}");
  } catch (e) {
    print("Terjadi kesalahan: $e");
  }
}
