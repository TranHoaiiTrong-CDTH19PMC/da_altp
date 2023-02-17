import 'package:flutter/material.dart';

class quenmatkhauScreen extends StatefulWidget {
  const quenmatkhauScreen({Key? key}) : super(key: key);

  @override
  State<quenmatkhauScreen> createState() => _quenmatkhauScreenState();
}

class _quenmatkhauScreenState extends State<quenmatkhauScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.png"), fit: BoxFit.cover)),
        child: ListView(children: [
          SizedBox(height: 150),
          Container(
            height: 150,
            child: Image.asset('images/logo.png'),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.amber[50],
                labelText: 'Tên đăng nhập',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.amber[50],
                labelText: 'Email',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 40, right: 40),
            child: ElevatedButton(
              child: Text('Lấy lại mật khẩu',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              onPressed: () {},
            ),
          ),
        ]),
      ),
    );
  }
}
