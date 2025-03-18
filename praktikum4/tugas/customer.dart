import 'person.dart';

class Customer extends Person {
  String? _idCustomer;

  Customer({String? idCustomer, String? nama}) : super(nama: nama) {
    this._idCustomer = idCustomer;
  }

  String getIdCustomer() => _idCustomer!;
  void showPerson() => print("ID Customer: $_idCustomer");
}
