import 'package:da_altp/api_dang_ki.dart';
import 'package:da_altp/dangnhap.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class dangkytaikhoanScreen extends StatefulWidget {
  dangkytaikhoanScreen({Key? key}) : super(key: key);

  @override
  State<dangkytaikhoanScreen> createState() => _dangkytaikhoanScreenState();
}

class _dangkytaikhoanScreenState extends State<dangkytaikhoanScreen> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _tendn = TextEditingController();
  TextEditingController _mk = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _xnmk = TextEditingController();
  String add = "";

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
                SizedBox(height: 100),
                Container(
                  height: 150,
                  child: Image.asset('images/logo.png'),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    controller: _tendn,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('Vui lòng nhập tên đăng nhập');
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
                    controller: _email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('Vui lòng nhập email');
                      }
                      if (!RegExp(r'^[a-zA-Z0-9]+@gmail+.com$')
                          .hasMatch(value)) {
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
                    controller: _mk,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('Vui lòng nhập mật khẩu');
                      }
                    },
                    onSaved: (value) {
                      _mk.text = value!;
                    },
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
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: TextFormField(
                    controller: _xnmk,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ('Vui lòng xác nhận mật khẩu');
                      }
                      if (_xnmk.text != _mk.text) {
                        return ('Vui lòng nhập trùng với mật khẩu');
                      }
                    },
                    onSaved: (value) {
                      _xnmk.text = value!;
                    },
                    style: TextStyle(color: Colors.black, fontSize: 18),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.amber[50],
                      labelText: 'Xác nhận mật khẩu',
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
                SizedBox(height: 20),
                Container(
                  height: 50,
                  padding: EdgeInsets.only(left: 40, right: 40),
                  child: ElevatedButton(
                    child: Text('Đăng ký', style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      if (!_formkey.currentState!.validate()) {
                        return;
                      } else {
                        API_DANG_KY(
                                url:
                                    "http://10.0.2.2:8000/api/dang-ki?ten_dang_nhap=" +
                                        _tendn.text +
                                        "&password=" +
                                        _mk.text +
                                        "&email=" +
                                        _email.text)
                            .getDataString()
                            .then((value) {
                          add = value;
                          print(value);

                          setState(() {
                            if (add != "ten_dang_nhap_da_ton_tai") {
                              Fluttertoast.showToast(msg: "Đăng ký thành công");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dangnhapScreen()));
                            } else {
                              Fluttertoast.showToast(
                                  msg: "Tên đăng nhập đã tồn tại");
                              return;
                            }
                          });
                        });
                      }
                    },
                  ),
                ),
              ]),
            )));
  }
}
