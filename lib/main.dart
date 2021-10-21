import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interintel/pages/home_page.dart';
import 'package:interintel/utils/styles.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Info';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: createMaterialColor(Color(0xff334759))),
        home: HomePage(),
      );
}
