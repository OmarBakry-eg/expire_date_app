import 'package:expire_date/model/items_model.dart';
import 'package:hive/hive.dart';
import 'abstractions.dart';

class ReadFromHive implements HiveReading {
  @override
  List<Item> readListOfItems() {
    final Box<Item> item = Hive.box<Item>("items");
    return item.values.toList();
  }
}
