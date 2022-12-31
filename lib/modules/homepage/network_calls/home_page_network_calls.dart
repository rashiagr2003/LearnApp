import 'dart:convert';

import 'package:http/http.dart' as http;

class HomePageNetworkCalls {
  static Future<dynamic> getLessonData() async {
    dynamic decoded1;

    var response1 = await http.get(
        Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/lessons"));
    decoded1 = jsonDecode(response1.body);

    return decoded1;
  }

  static Future<dynamic> getProgramData() async {
    dynamic decoded;
    var response = await http.get(
        Uri.parse("https://632017e19f82827dcf24a655.mockapi.io/api/programs"));
    decoded = jsonDecode(response.body);
    return decoded;
  }
}
