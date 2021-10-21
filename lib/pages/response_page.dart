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
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: FutureBuilder(
            builder: (context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return Container();
              }
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  Todos todo = snapshot.data[index];
                  return new Column(
                    children: <Widget>[
                      Card(
                        child: new ListTile(
                          title: new Text("Title: ${todo.title}"),
                          subtitle: new Text("Completed: ${todo.completed.toString()}"),
                        ),
                        elevation: 1.0,
                      ),
                      new Divider(
                        height: 2.0,
                      ),
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
