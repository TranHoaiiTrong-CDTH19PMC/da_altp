import 'package:da_altp/dangnhap.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'api.dart';

class DoiMatKhauScreen extends StatefulWidget {
  DoiMatKhauScreen({Key? key}) : super(key: key);

  @override
  State<DoiMatKhauScreen> createState() => _DoiMatKhauScreenState();
}

class _DoiMatKhauScreenState extends State<DoiMatKhauScreen> {
  final _formkey = GlobalKey<FormState>();
  String doimk = "";
  TextEditingController _mkc = TextEditingController();
  TextEditingController _mkm = TextEditingController();
  TextEditingController _xnmk = TextEditingController();
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
              image: AssetImage("images/background.png"), fit: BoxFit.cover)),
      child: Form(
        key: _formkey,
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
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: _mkc,
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.amber[50],
                labelText: 'M???t kh???u c??',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Nh???p m???t kh???u c??");
                }
              },
              onSaved: (value) {
                _mkc.text = value!;
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: _mkm,
              style: TextStyle(color: Colors.black, fontSize: 18),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.amber[50],
                labelText: 'M???t kh???u m???i',
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.5)),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Nh???p m???t kh???u m???i");
                }
              },
              onSaved: (value) {
                _mkm.text = value!;
              },
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: TextFormField(
              controller: _xnmk,
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Nh???p l???i m???t kh???u m???i");
                }
                if (_xnmk.text != _mkm.text) {
                  return ('Vui l??ng nh???p tr??ng v???i m???t kh???u m???i');
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
                labelText: 'Nh???p l???i m???t kh???u m???i',
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
              child: Text(
                '?????i m???t kh???u',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                if (!_formkey.currentState!.validate()) {
                  return;
                } else {
                  API(
                          url:
                              'http://10.0.2.2:8000/api/doi-mat-khau?password=' +
                                  _mkc.text +
                                  '&password1=' +
                                  _mkm.text +
                                  '&password2=' +
                                  _xnmk.text)
                      .getDataString()
                      .then((value) {
                    doimk = value;
                    print(value);
                    setState(() {
                      Fluttertoast.showToast(msg: "?????i m???t kh???u th??nh c??ng");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => dangnhapScreen(),
                          ));
                    });
                  });
                }
              },
            ),
          ),
        ]),
      ),
    ));
  }
}
