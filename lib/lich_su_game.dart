import 'package:da_altp/lich_su_thach_dau.dart';
import 'package:da_altp/lich_su_tra_loi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LichSuScreen());
}

class LichSuScreen extends StatelessWidget {
  const LichSuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(child: Text('Lịch sử trả lời')),
                  Tab(child: Text('Lịch sử thách đấu')),
                ],
              ),
              title: Container(
                padding: EdgeInsets.only(top: 45, bottom: 20),
                alignment: Alignment.center,
                child: Text(
                  "Lịch sử thi đấu",
                  style: TextStyle(
                      color: Colors.orangeAccent.shade100,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/giaodien.png"),
                      fit: BoxFit.cover)),
              child: const TabBarView(
                children: [
                  LichSuTraLoiScreen(),
                  LichSuThachDauScreen(),
                ],
              ),
            ),
          ),
        ));
  }
}
