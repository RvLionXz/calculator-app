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
  int input = 0;

  //controller
  final TextEditingController _controller = TextEditingController();


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
              TextField(
                controller: _controller,
                readOnly: true,
                decoration: InputDecoration(
                  hintText: "0",
                  hintStyle: TextStyle(fontSize: 50, color: Colors.blue),
                  border: OutlineInputBorder(),
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
                          ;
                        },
                      ),
                      CustomButton(
                        text: "7",
                        onPressed: () {
                          ;
                        },
                      ),
                      CustomButton(
                        text: "4",
                        onPressed: () {
                          ;
                        },
                      ),
                      CustomButton(text: "1", onPressed: () {}),
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
                          ;
                        },
                      ),
                      CustomButton(
                        text: "5",
                        onPressed: () {
                          ;
                        },
                      ),
                      CustomButton(text: "2", onPressed: () {}),
                      CustomButton(text: "0", onPressed: () {}),
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
                          ;
                        },
                      ),
                      CustomButton(
                        text: "6",
                        onPressed: () {
                          ;
                        },
                      ),
                      CustomButton(
                        text: "3",
                        onPressed: () {
                          ;
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
