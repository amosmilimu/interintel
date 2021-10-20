import 'package:flutter/material.dart';

class DesignPage extends StatelessWidget {

  final String name;
  final String email;
  final int phone;

  DesignPage({ Key? key, required this.name,
    required this.email,
    required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Design'),
          centerTitle: true
        ),

        body: Container(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Text("$name")
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
