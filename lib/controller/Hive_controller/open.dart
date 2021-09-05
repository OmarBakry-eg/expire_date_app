import 'package:hive/hive.dart';
import 'abstractions.dart';

class OpenHive implements HiveOpening {
  @override
  Future<bool> open() async {
    final bool isOpend = isOpen();
    if (isOpend) {
      return Future.value(isOpend);
    } else {
      try {
        final Box<dynamic> openHive = await Hive.openBox("items");
        if (openHive.isOpen) {
          return true;
        } else {
          throw 'Cannot open hive';
        }
      } catch (e) {
        throw 'Got Catch ERR : $e';
      }
    }
  }

  @override
  bool isOpen() {
    final bool opend = Hive.isBoxOpen("items");
    return opend;
  }
}
