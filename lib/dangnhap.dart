import 'package:da_altp/man_hinh_chinh.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'api.dart';
import 'quenmatkhau.dart';
import 'dangky.dart';

class dangnhapScreen extends StatefulWidget {
  dangnhapScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<dangnhapScreen> createState() => _dangnhapScreenState();
}

class _dangnhapScreenState extends State<dangnhapScreen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _tendn = TextEditingController();
  TextEditingController _mk = TextEditingController();
  String dangnhap = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover)),
          child: Form(
            key: _formkey,
            child: ListView(children: [
              SizedBox(height: 50),
              Container(
                height: 150,
                child: Image.asset('images/logo.png'),
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  controller: _tendn,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Vui lòng nhập tên đăng nhập");
                    }
                  },
                  onSaved: (value) {
                    _tendn.text = value!;
                  },
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
                        borderSide:
                            BorderSide(color: Colors.black, width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 1.5)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  controller: _mk,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Vui lòng nhập mật khẩu");
                    }
                  },
                  onSaved: (value) {
                    _mk.text = value!;
                  },
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.amber[50],
                    labelText: 'Mật khẩu',
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 1.5)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black, width: 1.5)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 50,
                padding: EdgeInsets.only(left: 40, right: 40),
                child: ElevatedButton(
                    child: Text('Đăng nhập', style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      if (!_formkey.currentState!.validate()) {
                        return;
                      } else {
                        API(
                                url:
                                    "http://10.0.2.2:8000/api/dang-nhap?ten_dang_nhap=" +
                                        _tendn.text +
                                        "&password=" +
                                        _mk.text)
                            .getDataString()
                            .then((value) {
                          dangnhap = value;
                          print(value);

                          setState(() {
                            if (dangnhap != "that_bai") {
                              Fluttertoast.showToast(
                                  msg: "Đăng nhập thành công");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          manhinhchinhScreen()));
                            } else {
                              Fluttertoast.showToast(msg: "Đăng nhập thất bại");
                              return;
                            }
                          });
                        });
                      }
                    }),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                padding: EdgeInsets.only(left: 40, right: 40),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                  child: Text(
                    'Quên mật khẩu',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => quenmatkhauScreen()));
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
                    child: Text('Đăng ký', style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => dangkytaikhoanScreen()));
                    }),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 100),
                      child: Container(
                        height: 31,
                        child: Image.asset('images/fb.png'),
                      )),
                  Container(
                    child: Text(
                      'Đăng nhập với Facebook',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 104),
                      child: Container(
                        height: 25,
                        child: Image.asset('images/gg.png'),
                      )),
                  Container(
                      child: Text(
                    ' Đăng nhập với Google',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ))
                ],
              ),
            ]),
          )),
    );
  }
}
