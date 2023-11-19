import 'dart:convert';
import 'package:http/http.dart' as http;
import '/models/event.dart';
import '/common/url_address.dart';

class ApiEvent {
  Future<List<Event>> listOfEvent() async {
    final response = await http.get(Uri.parse("$urlEvent/event"));
    if (response.statusCode == 200) {
      return List<Event>.from(
          json.decode(response.body).map((x) => Event.fromJson(x)));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Event> getDetail(int id) async {
    final response = await http.get(Uri.parse("$urlEvent/event/$id"));
    if (response.statusCode == 200) {
      return Event.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Event> createEvent(String name) async {
    final response = await http.post(
      Uri.parse('$urlEvent/event'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
      }),
    );

    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return Event.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create Task.');
    }
  }
}
