import 'package:flutter/material.dart';
import 'package:interintel/main.dart';
import 'package:interintel/pages/design_page.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                const SizedBox(height: 16),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name'),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email'),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Phone Number'),
                ),
                const SizedBox(height: 16),
                ButtonWidget(
                  icon: Icons.open_in_new,
                  text: 'Open Drawer',
                  onClicked: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(
                        builder: (context)=>DesignPage(name:'Amos',
                          email: 'amos@gmail.com',
                          phone: 0,)));
                  },
                ),
              ],
            ),
          ),
        ),
      );
}
