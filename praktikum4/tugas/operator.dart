import 'person.dart';

class Operator extends Person {
  String? _idOperator;

  Operator(String nama, String idOperator) : super(nama) {
    this._idOperator = idOperator;
  }

  String getIdOperator() => _idOperator!;
  void showPerson() {
    print("ID Operator: $_idOperator");
  }
}
