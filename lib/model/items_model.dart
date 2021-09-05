import 'dart:io';

import 'package:hive/hive.dart';

part 'items_model.g.dart';

@HiveType(typeId: 0)
class Item {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String itemName;
  @HiveField(2)
  final String? description;
  @HiveField(3)
  final bool isExpired;
  @HiveField(4)
  final File? imageFile;

  const Item({required this.id,  this.description, this.imageFile, required this.isExpired, required this.itemName})
      : assert(itemName != '');
}
