import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xffe5e5e5),
      ),
      title: 'Calculator',
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget myButton({color, text}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
      child: Text(
        text.toString(),
        style: TextStyle(fontSize: 30.0),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e5e5),
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 200,
                        color: Colors.transparent,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '1+1',
                            style:
                                TextStyle(fontSize: 45.0, color: Colors.grey),
                          ),
                          Text(
                            '=0',
                            style: TextStyle(
                                fontSize: 65.0, color: Colors.black54),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 8,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 7.0,
                mainAxisSpacing: 7.0,
                children: [
                  myButton(color: Colors.greenAccent, text: 1),
                  myButton(color: Colors.greenAccent, text: 2),
                  myButton(color: Colors.greenAccent, text: 3),
                  myButton(color: Colors.greenAccent, text: 4),
                  myButton(color: Colors.greenAccent, text: 5),
                  myButton(color: Colors.greenAccent, text: 6),
                  myButton(color: Colors.greenAccent, text: 7),
                  myButton(color: Colors.greenAccent, text: 8),
                  myButton(color: Colors.greenAccent, text: 9),
                  myButton(color: Colors.greenAccent, text: 10),
                  myButton(color: Colors.greenAccent, text: 11),
                  myButton(color: Colors.greenAccent, text: 12),
                  myButton(color: Colors.greenAccent, text: 13),
                  myButton(color: Colors.greenAccent, text: 14),
                  myButton(color: Colors.greenAccent, text: 15),
                  myButton(color: Colors.greenAccent, text: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
