class InternetProviderModel {
  final int id;
  final String name;
  final int price;

  InternetProviderModel({
    required this.id,
    required this.name,
    required this.price,
  });

  factory InternetProviderModel.fromJson(Map<String, dynamic> json) {
    return InternetProviderModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'price': price};
}
