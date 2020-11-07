import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthService {
  Future<Map> sendDataToServer(Map body) async {
    final response = await http.post("http://roocket.org/api/login",body: body
         // body: {"email": _emailValue, "password": _passwordValue}

         );
    // print(response.statusCode);
    // print(json.decode(response.body));
    //   print(json.decode(response.body)["data"]);
    var responseBody = json.decode(response.body);
    return responseBody;
  }
}
