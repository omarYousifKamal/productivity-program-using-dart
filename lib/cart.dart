import 'item.dart';
import 'product.dart';

class Cart {
  final Map<int, Item> _items = {};

  void addProduct(Product product) {
    final item = _items[product.id];
    if (item == null) {
      _items[product.id] = Item(product: product, quantity: 1);
    } else {
      _items[product.id] = Item(product: product, quantity: item.quantity + 1);
    }
  }

  bool get isEmpty => _items.isEmpty;
  double total() => _items.values
      .map((item) => item.price)
      .reduce((value, element) => value + element);
  @override
  String toString() {
    if (_items.isEmpty) {
      return 'Cart is Empty';
    }
    final itemizedList =
        _items.values.map((items) => items.toString()).join('\n');
    return '--------------\n$itemizedList\n Total: \$$total()\n---------';
  }
}

const allProducts = [
  Product(id: 1, name: 'apples', price: 1.60),
  Product(id: 2, name: 'banana', price: 2.0),
  Product(id: 3, name: 'pineapple', price: 7.60),
];
