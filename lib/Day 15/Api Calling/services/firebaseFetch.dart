import 'dart:convert';

import '../model/personModel.dart';
import 'package:http/http.dart' as http;

class FirebaseFetch {
  // post
  final uri = Uri.parse(
    'https://firsttask-e6ae2-default-rtdb.asia-southeast1.firebasedatabase.app/userData.json',
  );
  Future<void> postData(Person data) async {
    var response = await http.post(uri,
        body: json.encode({
          'name': data.name,
          'email': data.email,
          'contact': data.contact,
          'category': data.category,
        }));
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
  }

  Future<Map<String, Object?>> getData() async {
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception("Failed to Load");
    }
  }

  Future<void> deleteData(String? id) async {
    final deleteUri = Uri.parse(
      'https://firsttask-e6ae2-default-rtdb.asia-southeast1.firebasedatabase.app/userData/$id.json',
    );
    final response = await http.delete(deleteUri);
    if (response.statusCode == 200) {
      throw Exception("Data delted successfully");
    } else
      throw Exception("Cant not delte data");
  }

  Future<void> updateData(Person data) async {
    final updateUri = Uri.parse(
      'https://firsttask-e6ae2-default-rtdb.asia-southeast1.firebasedatabase.app/userData/${data.id}.json',
    );
    final response = await http.patch(updateUri,
        body: json.encode({
          'name': data.name,
          'email': data.email,
          'contact': data.contact,
          'category': data.category,
        }));

    if (response.statusCode == 200) {
      throw Exception("Data updated successfully");
    } else
      throw Exception("Cant not update data");
  }
}
