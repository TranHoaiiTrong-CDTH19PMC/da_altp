import 'dart:async';
import 'api.dart';
import 'api_cauhoi.dart';
import 'const/colors.dart';
import 'const/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'man_hinh_chinh.dart';

class QuizScreen extends StatefulWidget {
  String loailv = "";

  QuizScreen({Key? key, required this.loailv}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var currentQuestionIndex = 0;
  int seconds = 20;
  Timer? timer;
  late Future quiz;
  String ten = "";

  int points = 0;

  var isLoaded = false;

  var optionsList = [];

  var optionsColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  @override
  void initState() {
    super.initState();
    quiz = getQuiz(this.widget.loailv);
    startTimer();
    //api lấy tên người đăng nhập
    API(url: "http://10.0.2.2:8000/api/user-info")
        .getDataString()
        .then((value) {
      ten = value;
      print(value);
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  resetColors() {
    optionsColor = [
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
    ];
  }

  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          timer.cancel();
          showDiaLog(
              "Xin chúc mừng bạn đã đạt được", 'Hết thời gian trả lời câu hỏi');
        }
      });
    });
  }

  gotoNextQuestion() {
    isLoaded = false;
    resetColors();

    currentQuestionIndex++;
    timer!.cancel();
    seconds = 20;
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/giaodien.png"), fit: BoxFit.cover)),
        child: FutureBuilder(
          future: quiz,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data;
              if (isLoaded == false) {
                optionsList.add(data[currentQuestionIndex]["phuong_an_a"]);
                optionsList.add(data[currentQuestionIndex]["phuong_an_b"]);
                optionsList.add(data[currentQuestionIndex]["phuong_an_c"]);
                optionsList.add(data[currentQuestionIndex]["phuong_an_d"]);
                optionsList.shuffle();
                isLoaded = true;
              }

              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
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
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Điểm:${points}',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Câu hỏi',
                        style: TextStyle(
                            color: Color.fromARGB(255, 139, 194, 240),
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                        alignment: Alignment.center,
                        height: 80,
                        width: 80,
                        color: Color.fromARGB(255, 139, 194, 240),
                        child: Text(
                          (currentQuestionIndex + 1).toString(),
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        )),
                    const SizedBox(height: 20),
                    normalText(
                        color: Colors.white,
                        size: 20,
                        text: data[currentQuestionIndex]["noi_dung"]),
                    const SizedBox(height: 20),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: optionsList.length,
                      itemBuilder: (context, index) {
                        var answer = data[currentQuestionIndex]["dap_an"];

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              //kiem tra dap an dung
                              if (answer.toString() ==
                                  optionsList[index].toString()) {
                                optionsColor[index] = Colors.green;
                                points = points + 10;
                                //deylay xóa sau 1 giây
                                Future.delayed(const Duration(seconds: 1), () {
                                  optionsList.remove(data[currentQuestionIndex]
                                      ["phuong_an_a"]);
                                  optionsList.remove(data[currentQuestionIndex]
                                      ["phuong_an_b"]);
                                  optionsList.remove(data[currentQuestionIndex]
                                      ["phuong_an_c"]);
                                  optionsList.remove(data[currentQuestionIndex]
                                      ["phuong_an_d"]);
                                });
                              } else {
                                optionsColor[index] = Colors.red;
                                Future.delayed(const Duration(seconds: 1), () {
                                  optionsList.remove(data[currentQuestionIndex]
                                      ["phuong_an_a"]);
                                  optionsList.remove(data[currentQuestionIndex]
                                      ["phuong_an_b"]);
                                  optionsList.remove(data[currentQuestionIndex]
                                      ["phuong_an_c"]);
                                  optionsList.remove(data[currentQuestionIndex]
                                      ["phuong_an_d"]);
                                });
                              }
                              // chuyển câu hỏi
                              if (currentQuestionIndex < data.length - 1) {
                                Future.delayed(const Duration(seconds: 1), () {
                                  gotoNextQuestion();
                                });
                              } else {
                                Future.delayed(const Duration(seconds: 1), () {
                                  timer!.cancel();
                                  showDiaLog("Xin chúc mừng bạn đã đạt được",
                                      'Lượt chơi đã kết thúc');
                                });
                              }
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(
                                bottom: 20, left: 50, right: 50),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: optionsColor[index],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: headingText(
                              color: blue,
                              size: 18,
                              text: optionsList[index].toString(),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        normalText(
                            color: Colors.white, size: 24, text: "${seconds}s"),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            value: seconds / 20,
                            valueColor:
                                const AlwaysStoppedAnimation(Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                            ),
                            child: Icon(
                              Icons.replay_outlined,
                              color: Color.fromARGB(255, 141, 68, 26),
                            ),
                            onPressed: () {
                              timer!.cancel();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => manhinhchinhScreen(),
                                  ));
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 141, 68, 26),
                            ),
                            child: Text(
                              '50:50',
                              style: TextStyle(color: Colors.yellow),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 141, 68, 26),
                            ),
                            child: Icon(
                              Icons.groups_outlined,
                              color: Colors.yellow,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 141, 68, 26),
                            ),
                            child: Icon(
                              Icons.phone,
                              color: Colors.yellow,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                        ),
                        Container(
                          height: 45,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 141, 68, 26),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '100 ',
                                    style: TextStyle(color: Colors.yellow),
                                  ),
                                  Icon(
                                    Icons.diamond_outlined,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                              onPressed: () {}),
                        ),
                      ],
                    )
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              );
            }
          },
        ),
      ),
    );
  }

  void showDiaLog(String mes, String title) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(mes,
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            ),
            actions: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "${points} Điểm",
                  style: TextStyle(
                      color: Color.fromARGB(255, 197, 40, 61),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 40,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Thêm 1 lượt chơi: 300 ',
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 18)),
                        Icon(
                          Icons.diamond_outlined,
                          color: Colors.yellow,
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 187, 59, 65),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => manhinhchinhScreen(),
                          ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kết thúc',
                          style: TextStyle(color: Colors.yellow, fontSize: 18),
                        ),
                      ],
                    )),
              ),
            ],
          );
        });
  }
}
