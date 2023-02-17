import 'package:flutter/material.dart';

import 'api.dart';

class LichSuTraLoiScreen extends StatefulWidget {
  const LichSuTraLoiScreen({Key? key}) : super(key: key);

  @override
  State<LichSuTraLoiScreen> createState() => _LichSuTraLoiScreenState();
}

class _LichSuTraLoiScreenState extends State<LichSuTraLoiScreen> {
  String ten = "";
  @override
  void initState() {
    super.initState();
    API(url: "http://10.0.2.2:8000/api/user-info")
        .getDataString()
        .then((value) {
      ten = value;
      print(value);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context, index) => Card(
            margin: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
                  child: Text(
                    ten,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  '05/09/2019 07:53 PM',
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  '      Số câu: 10',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  '100 điểm',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ))));
  }
}
