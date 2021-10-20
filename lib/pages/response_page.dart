import 'package:flutter/material.dart';
import 'package:interintel/data/api_data.dart';
import 'package:interintel/models/todo_data.dart';

class ResponsePage extends StatefulWidget {
  @override
  State<ResponsePage> createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Response'),
          centerTitle: true
        ),

        body: Container(
          child: FutureBuilder(
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                //print('project snapshot data is: ${projectSnap.data}');
                return Container();
              }
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Todos todo = snapshot.data[index];
                  return Column(
                    children: <Widget>[
                      Text(todo.title)
                    ],
                  );
                },
              );
            },
            future: getTodos(),
          ),
        ),
      );

}
