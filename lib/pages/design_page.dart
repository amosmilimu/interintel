import 'package:flutter/material.dart';
import 'package:interintel/utils/constants.dart';
import 'package:interintel/utils/styles.dart';

class DesignPage extends StatelessWidget {

  final String name;
  final String email;
  final String phone;

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
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Card(
                elevation: 2.0,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              height: 200,
                              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                              child: Image.network(
                                image,
                                fit: BoxFit.cover,
                              ),
                          ),
                        ),
                        Expanded(child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("$name",style: heading(),),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Icon(Icons.mail),
                                const SizedBox(width: 5),
                                Text("$email",style: body2(),),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Icon(Icons.phone),
                                const SizedBox(width: 5),
                                Text("$phone",style: body2(),),
                              ],
                            ),
                          ],
                        )  )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      const SizedBox(height: 6),
                      Text("About",style: heading1(),),
                      const SizedBox(height: 6),
                      Text("John Does is a fictitious name used in legal proceedings "
                          "for a male party whose true name is not known. Compare Jane "
                          "Doe, Richard Roe. of or for an unknown person; using the name "
                          "John Doe to stand for an unknown person: The judge issued a John "
                          "Doe warrant so the police could arrest the culprit when they "
                          "identified him"),
                      const SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.pin_drop),
                          Column(
                            children: [
                              Text("Address",style: heading1(),),
                              const SizedBox(height: 6),
                              Text("New Delhi\n00100\nEven Street\nGolgatha\nIndia"),
                            ],
                          ),
                          Container(
                            height: 150,
                            width: 200,
                            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Image.network(
                              mapImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
