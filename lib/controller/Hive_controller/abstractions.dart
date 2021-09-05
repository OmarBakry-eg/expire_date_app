
import 'dart:io';
import 'package:expire_date/model/items_model.dart';

abstract class HiveUpdate {
  Future<bool> updateItem(int index, Item item);
}

abstract class HiveReading {
 List<Item> readListOfItems();
}

abstract class HiveSaving {
  Future<bool> save({required final int id, required final bool isExpired, required final String itemName, String? description, File? image});
}


abstract class HiveOpening {
  Future<bool> open();
  bool isOpen();
}