import 'package:da_altp/mh_tra_loi.dart';
import 'package:flutter/material.dart';
import 'api.dart';

class mhchonlinhvucScreen extends StatefulWidget {
  mhchonlinhvucScreen({Key? key}) : super(key: key);

  @override
  State<mhchonlinhvucScreen> createState() => _mhchonlinhvucScreenState();
}

class _mhchonlinhvucScreenState extends State<mhchonlinhvucScreen> {
  String cdtn = 'Ca Dao Tục Ngữ';
  String th = 'Tổng Hợp';
  String tt = 'Thể Thao';
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
    return Scaffold(
        body: Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/giaodien.png"), fit: BoxFit.cover)),
      child: Column(children: [
        SizedBox(height: 30),
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 100,
              color: Color.fromARGB(255, 46, 38, 153),
              child: Text(
                ten,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Expanded(child: Text('')),
            Container(
              height: 30,
              width: 80,
              color: Color.fromARGB(255, 243, 177, 33),
              alignment: Alignment.center,
              child: Text(
                '2000',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 5),
            ),
            Container(
              height: 30,
              color: Color.fromARGB(255, 167, 90, 2),
              child: Icon(
                Icons.diamond_outlined,
                color: Colors.yellow,
                size: 25,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
            )
          ],
        ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Điểm: 0',
            style: TextStyle(
              color: Colors.red,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(height: 15),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Câu hỏi',
            style: TextStyle(
              color: Color.fromARGB(255, 139, 194, 240),
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          alignment: Alignment.center,
          height: 80,
          width: 80,
          color: Color.fromARGB(255, 139, 194, 240),
          child: Text(
            '1',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
        SizedBox(height: 50),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Chọn lĩnh vực',
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 60,
          width: 280,
          padding: EdgeInsets.only(top: 10),
          child: ElevatedButton(
            child: Text('Ca Dao Tục Ngữ', style: TextStyle(fontSize: 18)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizScreen(
                            loailv: cdtn,
                          )));
            },
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 60,
          width: 280,
          padding: EdgeInsets.only(top: 10),
          child: ElevatedButton(
            child: Text('Tổng Hợp', style: TextStyle(fontSize: 18)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizScreen(
                            loailv: th,
                          )));
            },
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 60,
          width: 280,
          padding: EdgeInsets.only(top: 10),
          child: ElevatedButton(
            child: Text('Thể thao', style: TextStyle(fontSize: 18)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => QuizScreen(
                            loailv: tt,
                          )));
            },
          ),
        ),
      ]),
    ));
  }
}
