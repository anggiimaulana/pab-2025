import 'order.dart';

class Customer {
  String? _id;
  Order? _order;

  Customer(this._id);

  void membuatOrder(int total) {
    _order = Order(total);
  }

  Order getOrder() {
    return _order!;
  }

  String getId() {
    return _id!;
  }

  void setId(String id) {
    _id = id;
  }
}
