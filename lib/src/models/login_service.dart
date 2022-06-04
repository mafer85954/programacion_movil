import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> login(String email, String password) async {
  Map<String, String> headers = {'Content-Type': 'application/json'};
  String loginAPI = '/api/login/';
  String host = '192.168.88.84:3000';

  try {
    final response = await http.post(
      Uri.http(host, loginAPI),
      headers: headers,
      body: json.encode(
        {'email': email, 'password': password},
      ),
    );

    print(response);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      Map<String, dynamic> responseMap = {
        'status': data['status'],
        'token': data['token']
      };
      return responseMap;
    } else {
      return {'status': 'Error'};
    }
  } catch (e) {
    print(e);
    return {'status': e};
  }
}
