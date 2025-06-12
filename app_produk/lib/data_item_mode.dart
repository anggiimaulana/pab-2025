class DataItem {
  final int id;
  final String name;

  DataItem({required this.id, required this.name});

  factory DataItem.fromJson(Map<String, dynamic> json) {
    return DataItem(id: int.parse(json['id'].toString()), name: json['name']);
  }
}
