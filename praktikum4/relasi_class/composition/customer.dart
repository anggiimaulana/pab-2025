import 'order.dart';

class Customer {
  String _id;
  Order _order;

  Customer({String id = "", Order? order})
    : _id = id,
      _order = order ?? Order(); // Jika order null, buat Order default

  void membuatOrder(int total) {
    _order = Order(total: total);
  }

  Order getOrder() => _order;
  String getId() => _id;

  void setId(String id) {
    _id = id;
  }
}
