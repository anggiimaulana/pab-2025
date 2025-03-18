class Order {
  int _total;

  Order({int total = 0}) : _total = total;

  int getTotal() => _total;

  void setTotal(int total) {
    _total = total;
  }
}
