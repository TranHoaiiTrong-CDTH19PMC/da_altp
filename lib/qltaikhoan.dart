import 'package:da_altp/doi_mat_khau_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'api.dart';

class qltaikhoanScreen extends StatefulWidget {
  qltaikhoanScreen({Key? key}) : super(key: key);

  @override
  State<qltaikhoanScreen> createState() => _qltaikhoanScreenState();
}

class _qltaikhoanScreenState extends State<qltaikhoanScreen> {
  final _formkey = GlobalKey<FormState>();
  String capnhap = "";
  TextEditingController _tendn = TextEditingController();
  TextEditingController _avatar = TextEditingController();
  TextEditingController _email = TextEditingController();
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
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.cover)),
          child: Form(
            key: _formkey,
            child: ListView(children: [
              SizedBox(height: 80),
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
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Đổi thông tin cá nhân",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  enabled: false,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.amber[50],
                    labelText: ten,
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
                  controller: _email,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Nhập email");
                    }
                    if (!RegExp(r'^[a-zA-Z0-9]+@gmail+.com$').hasMatch(value)) {
                      return ('Nhập email đúng định dạng');
                    }
                  },
                  onSaved: (value) {
                    _email.text = value!;
                  },
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.amber[50],
                    labelText: 'Email',
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
                  controller: _avatar,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Nhập avatar");
                    }
                  },
                  onSaved: (value) {
                    _avatar.text = value!;
                  },
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.picture_in_picture_rounded),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.amber[50],
                    labelText: 'avatar',
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
                height: 50,
                padding: EdgeInsets.only(left: 40, right: 40),
                child: ElevatedButton(
                  child: Text(
                    'Cập nhật',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    if (!_formkey.currentState!.validate()) {
                      Fluttertoast.showToast(msg: "Cập nhập thất bại");
                      return;
                    } else {
                      API(
                              url:
                                  "http://10.0.2.2:8000/api/update-user?ten_dang_nhap=" +
                                      _tendn.text +
                                      "&email=" +
                                      _email.text +
                                      "&avatar=" +
                                      _avatar.text)
                          .getDataString()
                          .then((value) {
                        capnhap = value;
                        print(value);
                        setState(() {
                          Fluttertoast.showToast(msg: "Cập nhật thành công");
                          return;
                        });
                      });
                    }
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
                  child: Text(
                    'Đổi mật khẩu',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoiMatKhauScreen(),
                        ));
                  },
                ),
              ),
            ]),
          )),
    );
  }
}
