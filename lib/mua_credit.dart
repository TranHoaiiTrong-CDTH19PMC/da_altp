import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'api.dart';

class muaCreditScreen extends StatefulWidget {
  const muaCreditScreen({super.key});

  @override
  State<muaCreditScreen> createState() => muaCreditScreenState();
}

class muaCreditScreenState extends State<muaCreditScreen> {
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
        SizedBox(
          height: 10,
        ),
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
        Container(
          padding: EdgeInsets.only(top: 45, bottom: 20),
          alignment: Alignment.center,
          child: Text(
            "Mua Credit",
            style: TextStyle(
                color: Colors.orangeAccent.shade100,
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    children: [
                      Container(
                          width: 150,
                          height: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green,
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.diamond_rounded,
                                          color: Colors.yellowAccent,
                                          size: 100,
                                        ))
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5000",
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text("BUY"),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: [
                      Container(
                          width: 150,
                          height: 225,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green,
                          ),
                          child: Container(
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.diamond_rounded,
                                          color: Colors.yellowAccent,
                                          size: 100,
                                        ))
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "3000",
                                    style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text("BUY"),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      ]),
    ));
  }
}
