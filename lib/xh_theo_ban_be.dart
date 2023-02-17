import 'package:flutter/material.dart';

import 'api.dart';

class XepHangTheoBB extends StatefulWidget {
  const XepHangTheoBB({Key? key}) : super(key: key);

  @override
  State<XepHangTheoBB> createState() => _XepHangTheoBBState();
}

class _XepHangTheoBBState extends State<XepHangTheoBB> {
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
    return ListView(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.red,
                child: Text(
                  "1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius: 25,
                              child: Icon(
                                Icons.person_outline,
                              )),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 4, right: 105),
                              child: Text(
                                ten,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "21/12/2022 05:36 AM",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "100 điểm",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.red,
                child: Text(
                  "2",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius: 25,
                              child: Icon(
                                Icons.person_outline,
                              )),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 4, right: 25),
                              child: Text(
                                'Nguyễn Anh Khoa',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "22/12/2022 05:36 AM",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "100 điểm",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.red,
                child: Text(
                  "3",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius: 25,
                              child: Icon(
                                Icons.person_outline,
                              )),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 4, right: 30),
                              child: Text(
                                'Đặng Quang Vinh',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "23/12/2022 05:36 AM",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Expanded(child: Text('')),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "100 điểm",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.red,
                child: Text(
                  "4",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                              radius: 25,
                              child: Icon(
                                Icons.person_outline,
                              )),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 4, right: 40),
                              child: Text(
                                'Trần Hoài Trọng',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                "24/12/2022 05:36 AM",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "100 điểm",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
