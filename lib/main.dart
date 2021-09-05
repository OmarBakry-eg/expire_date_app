import 'package:expire_date/model/items_model.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'view/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDoc = await getApplicationDocumentsDirectory();
  Hive.init(appDoc.path);
  Hive.registerAdapter(ItemAdapter());
  Hive.openBox('items');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    print("LifecycleWatcherState#didChangeAppLifecycleState state=${state.toString()}");
    if (state == AppLifecycleState.inactive || state == AppLifecycleState.paused) {
      await Hive.close();
    }
    if (state == AppLifecycleState.resumed) {
      await Hive.openBox('items');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
