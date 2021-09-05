import 'dart:io';
import 'abstractions.dart';
import 'package:expire_date/model/items_model.dart';
import 'package:hive/hive.dart';

class SaveInHive implements HiveSaving {
  @override
  Future<bool> save({required final int id, required final bool isExpired, required final String itemName, String? description, File? image}) async {
    final Item item = Item(id: id, isExpired: isExpired, itemName: itemName, description: description, imageFile: image);
    return await Hive.box('items').add(item).then((value) => true).catchError((onError) => false);
  }
}
