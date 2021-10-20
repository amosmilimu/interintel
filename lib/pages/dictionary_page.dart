import 'package:flutter/material.dart';
import 'package:interintel/data/dictionary.dart';
import 'package:sortedmap/sortedmap.dart';

class DictionaryPage extends StatefulWidget {

  @override
  _DictionaryPageState createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {

  Map<String, dynamic> map = new SortedMap(Ordering.byKey());
  Map<String, dynamic> newDict = new Map();
  List<dynamic> myList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createSortedDictionary();
  }

  void _createSortedDictionary() {
    //initial sorting
    map.addAll(dictionary);
    map.forEach((key, value) {
      if(int.tryParse(key).runtimeType == int) {
        //create a list of integer key and sort it
        myList.add(int.parse(key));
        myList.sort();
      } else {
        myList.add(key);
      }
    });
    //loop through the sorted list and compare keys
    myList.forEach((element) {
      newDict[element.toString()] = dictionary[element.toString()];
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: NavigationDrawerWidget(),
    appBar: AppBar(
        title: Text('Dictionary'),
        centerTitle: true
    ),
    body: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: ListView.builder(
        itemCount: newDict.length,
        itemBuilder: (BuildContext context, int index) {
          String key = newDict.keys.elementAt(index);
          String values = newDict.values.elementAt(index);
          return new Column(
            children: <Widget>[
              Card(
                elevation: 1.0,
                child: new ListTile(
                  title: new Text("$key"),
                  subtitle: new Text("$values"),
                ),
              ),
              new Divider(
                height: 2.0,
              ),
            ],
          );
        },
      ),
    ),
  );
}