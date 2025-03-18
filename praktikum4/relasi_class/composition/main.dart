import 'customer.dart';

void main() {
  Customer cust1 = Customer(id: "001");
  cust1.membuatOrder(30000);
  print("ID Customer = ${cust1.getId()}");
  print("Total Order = ${cust1.getOrder().getTotal()}");
  print("\n");

  Customer cust2 = Customer(id: "002");
  cust2.membuatOrder(15000);
  print("ID Customer = ${cust2.getId()}");
  print("Total Order = ${cust2.getOrder().getTotal()}");
}
