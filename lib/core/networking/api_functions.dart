import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiFunctions {
  postData(String url, Map<String, dynamic> map) async {
    try {
      var r = await http.post(Uri.parse(url), body: map,);
      if (r.statusCode == 200 || r.statusCode == 400) {
        var body = jsonDecode(r.body);
        return body;
      } else {
        print(r.statusCode);
      }
    } catch (e) {
      print('error catch $e');
    }
  }

  queryUser(String url) async {
    try {
      var r = await http.get(Uri.parse(url));
      if (r.statusCode == 200 || r.statusCode == 400) {
        var body = jsonDecode(r.body);
        return body;
      } else {
        print(r.statusCode);
      }
    } catch (e) {
      print('error catch $e');
    }
  }
}
