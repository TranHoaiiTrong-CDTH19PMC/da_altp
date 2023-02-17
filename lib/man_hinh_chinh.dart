import 'package:da_altp/thach_dau.dart';
import 'package:da_altp/x_bang_xep_hang.dart';
import 'package:da_altp/lich_su_game.dart';
import 'package:da_altp/mh_chon_linh_vuc.dart';
import 'package:da_altp/mua_credit.dart';
import 'package:flutter/material.dart';
import 'api.dart';
import 'qltaikhoan.dart';

class manhinhchinhScreen extends StatefulWidget {
  manhinhchinhScreen({Key? key}) : super(key: key);

  @override
  State<manhinhchinhScreen> createState() => _manhinhchinhScreenState();
}

class _manhinhchinhScreenState extends State<manhinhchinhScreen> {
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
        child: ListView(children: [
          SizedBox(height: 120),
          Container(
              height: 100,
              child: CircleAvatar(
                backgroundColor: Colors.amber[70],
                radius: 20,
                child: Image.asset('images/ono.png'),
              )),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            child: Text(
              ten,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.diamond_outlined, color: Colors.orange, size: 20),
              Text(
                '2000',
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text('Quản lý tài khoản', style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => qltaikhoanScreen()));
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              child: Text('Trò chơi mới', style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => mhchonlinhvucScreen()));
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              child: Text('Thách đấu', style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThachDauScreen()));
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
              child: Text('Lịch sử trò chơi', style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LichSuScreen()));
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                ),
                child: Text('Bảng xếp hạng', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BangXepHangScreen()));
                }),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 245, 221, 10),
              ),
              child: Text('Mua credit', style: TextStyle(fontSize: 18)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => muaCreditScreen()));
              },
            ),
          ),
        ]),
      ),
    );
  }
}
