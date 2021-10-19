import 'package:flutter/material.dart';
import 'package:interintel/main.dart';
import 'package:interintel/widget/button_widget.dart';
import 'package:interintel/widget/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    // endDrawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text(MyApp.title),
    ),
    body: Builder(
      builder: (context) => Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: ButtonWidget(
          icon: Icons.open_in_new,
          text: 'Open Drawer',
          onClicked: () {
            Scaffold.of(context).openDrawer();
            // Scaffold.of(context).openEndDrawer();
          },
        ),
      ),
    ),
  );
}