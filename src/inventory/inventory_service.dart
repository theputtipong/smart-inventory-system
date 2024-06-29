import '../../extensions/first_where_or_null_extension.dart';
import 'inventory_model.dart';

class InventoryService {
  final List<InventoryItem> _items = [];

  List<InventoryItem> get items => _items;

  void addItem(InventoryItem item) {
    _items.add(item);
  }

  void updateItem(String id, InventoryItem updatedItem) {
    final index = _items.indexWhere((item) => item.id == id);
    if (index != -1) {
      _items[index] = updatedItem;
    }
  }

  void removeItem(String id) {
    _items.removeWhere((item) => item.id == id);
  }

  InventoryItem? getItemById(String id) {
    return _items.firstWhereOrNull((item) => item.id == id);
  }

  // Implement FIFO and LIFO methods
}
