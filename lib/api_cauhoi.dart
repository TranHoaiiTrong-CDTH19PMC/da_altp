import 'dart:convert';

import 'package:http/http.dart' as http;

getQuiz(String cclv) async {
  var res = await http.get(
      Uri.parse('http://10.0.2.2:8000/api/danh-sach-cau-hoi?linh_vuc=$cclv'));
  if (res.statusCode == 200) {
    var data = jsonDecode(res.body.toString());
    return data;
  }
}
