import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var url = Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=5');
var image = 'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60';
var mapImage = "https://www.thestatesman.com/wp-content/uploads/2020/04/googl_ED.jpg";

SnackBar getSnackBar(String message,bool error) {
  return SnackBar(
    content: Text('$message'),
    backgroundColor: error?Colors.red:Colors.green,
  );

}