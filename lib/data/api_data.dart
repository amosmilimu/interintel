import 'package:http/http.dart' as http;
import 'package:interintel/models/todo_data.dart';
import 'package:interintel/utils/constants.dart';

Future getTodos() async {
  var response = await http.get(url);
  return todosFromJson(response.body);
}