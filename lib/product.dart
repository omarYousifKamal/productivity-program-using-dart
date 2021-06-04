class Product {
  const Product({required this.id, required this.name, required this.price});
  final int id;
  final String name;
  final double price;
  String get displayName => '($intial)${name.substring(1)}:  \$$price ';
  String get intial => name.substring(0, 1);
}
