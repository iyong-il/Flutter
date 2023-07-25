import 'package:flutter/foundation.dart';
import 'models.dart';

class GroceryManager extends ChangeNotifier {
  final List<GroceryItem> _items = [];

  List<GroceryItem> get items => List.unmodifiable(_items);

  void addItem(GroceryItem item) {
    _items.add(item);
    notifyListeners();
  }

  void updateItem(GroceryItem item, int index) {
    _items[index] = item;
    notifyListeners();
  }

  void deleteItem(int index) {
    _items.removeAt(index);
    notifyListeners();
  }

  void toggleItemStatus(int index, bool complete) {
    var item = _items[index];
    _items[index] = item.copyWith(isComplete: complete);
    notifyListeners();
  }
}
