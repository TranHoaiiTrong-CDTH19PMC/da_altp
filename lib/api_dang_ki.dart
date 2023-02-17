import 'package:http/http.dart' as http;

class API_DANG_KY {
  API_DANG_KY({required this.url});
  String url;
  Future<String> getDataString() async {
    final response = await http.get(Uri.parse(url));

    return response.body;
  }
}
