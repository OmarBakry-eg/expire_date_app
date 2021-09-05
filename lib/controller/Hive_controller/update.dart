import 'package:expire_date/model/items_model.dart';
import 'package:hive/hive.dart';
import 'abstractions.dart';

class UpdateItem implements HiveUpdate {
  @override
  Future<bool> updateItem(int index, Item item) async {
    try {
      await Hive.box("items").putAt(index, "value");
      return true;
    } catch (e) {
      throw "Got Err in update : $e";
    }
  }
}
