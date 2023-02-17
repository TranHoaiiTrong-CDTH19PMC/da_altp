import 'package:da_altp/lich_su_thach_dau.dart';
import 'package:da_altp/lich_su_tra_loi.dart';
import 'package:da_altp/xh_theo_ban_be.dart';
import 'package:da_altp/xh_theo_linh_vuc.dart';
import 'package:da_altp/xh_theo_thoi_gian.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BangXepHangScreen());
}

class BangXepHangScreen extends StatelessWidget {
  const BangXepHangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(child: Text('Theo lĩnh vực')),
                  Tab(child: Text('Theo bạn bè')),
                  Tab(child: Text('Theo thời gian')),
                ],
              ),
              title: Container(
                padding: EdgeInsets.only(top: 45, bottom: 20),
                alignment: Alignment.center,
                child: Text(
                  "Bảng Xếp Hạng",
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
                  XepHangTheoLV(),
                  XepHangTheoBB(),
                  XepHangTheoTG(),
                ],
              ),
            ),
          ),
        ));
  }
}
