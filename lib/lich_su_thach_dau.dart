import 'package:flutter/material.dart';

import 'api.dart';

class LichSuThachDauScreen extends StatefulWidget {
  const LichSuThachDauScreen({Key? key}) : super(key: key);

  @override
  State<LichSuThachDauScreen> createState() => _LichSuThachDauScreenState();
}

class _LichSuThachDauScreenState extends State<LichSuThachDauScreen> {
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
        margin: EdgeInsets.only(top: 10),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            child: Text(
              ten,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          title: Row(
            children: [
              Text(
                '05/09/2022',
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  'Hòa',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ),
              Text(
                '05/09/2022',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
          subtitle: Row(
            children: [
              Expanded(
                child: Text(
                  'Số câu: 10',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '      Số câu: 10',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          trailing: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black,
            child: Text(
              'Trọng',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
