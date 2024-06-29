import 'package:dart_frog/dart_frog.dart';
import 'inventory_model.dart';
import 'inventory_service.dart';

final inventoryService = InventoryService();

Handler inventoryHandler = (context) async {
  final request = context.request;

  if (request.method == HttpMethod.post) {
    final data = await request.json();
    final item = InventoryItem.fromJson(data.toString());
    inventoryService.addItem(item);
    return Response.json(body: {'message': 'Item added successfully'});
  }

  // Implement other methods for update, delete, and fetch items

  return Response.json(body: inventoryService.items);
};
