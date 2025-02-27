import 'package:flutter/material.dart';
import 'widget/button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String input = "";

  void inputAngka(String angka) {
    setState(() {
      input += angka;
    });
  }

  //controller
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Calculator",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            //Root Column
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                input,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton(
                        text: "AC",
                        onPressed: () {
                          setState(() {
                            input = "";
                          });
                        },
                      ),
                      CustomButton(
                        text: "7",
                        onPressed: () {
                          inputAngka("7");
                        },
                      ),
                      CustomButton(
                        text: "4",
                        onPressed: () {
                          inputAngka("4");
                        },
                      ),
                      CustomButton(
                        text: "1",
                        onPressed: () {
                          inputAngka("1");
                        },
                      ),
                      CustomButton(text: ".", onPressed: () {}),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton(
                        text: "/",
                        onPressed: () {
                          ;
                        },
                      ),
                      CustomButton(
                        text: "8",
                        onPressed: () {
                          inputAngka("8");
                        },
                      ),
                      CustomButton(
                        text: "5",
                        onPressed: () {
                          inputAngka("5");
                        },
                      ),
                      CustomButton(
                        text: "2",
                        onPressed: () {
                          inputAngka("2");
                        },
                      ),
                      CustomButton(
                        text: "0",
                        onPressed: () {
                          inputAngka("0");
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton(
                        text: "*",
                        onPressed: () {
                          ;
                        },
                      ),
                      CustomButton(
                        text: "9",
                        onPressed: () {
                          inputAngka("9");
                        },
                      ),
                      CustomButton(
                        text: "6",
                        onPressed: () {
                          inputAngka("6");
                        },
                      ),
                      CustomButton(
                        text: "3",
                        onPressed: () {
                          inputAngka("3");
                        },
                      ),
                      CustomButton(
                        text: "%",
                        onPressed: () {
                          ;
                        },
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomButton(
                        text: "Del",
                        onPressed: () {
                          ;
                        },
                      ),
                      CustomButton(
                        text: "-",
                        onPressed: () {
                          ;
                        },
                      ),
                      CustomButton(
                        text: "+",
                        onPressed: () {
                          ;
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          minimumSize: Size(100, 200),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "=",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
