class Order {
  int? _total;

  Order(this._total);

  int getTotal() {
    return _total!;
  }

  void setTotal(int total) {
    _total = total;
  }
}
