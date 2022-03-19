import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xffe5e5e5),
        backgroundColor: Colors.black,
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

  Widget x({color,num}){
    return SizedBox(
      height: 400,
      width: 400,
      child: Container(
        color: color,

        child: ElevatedButton(
          child: Text(num),
          onPressed: (){},
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex:4,child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 200,
                  color: Colors.greenAccent,
                ),
                const Text('1+1=0',style: TextStyle(fontSize: 60.0),),
              ],

            )),
            Expanded(flex:8,child:GridView.count(
              crossAxisCount: 4,
              children: [
                x(color: Colors.amber,num:1.toString()),
                x(color: Colors.red,num:2.toString()),
                x(color: Colors.amber,num:1.toString()),
                x(color: Colors.blue,num:2.toString()),
                x(color: Colors.amber,num:1.toString()),
                x(color: Colors.blue,num:2.toString()),
                x(color: Colors.amber,num:1.toString()),
                x(color: Colors.blue,num:2.toString()),
                x(color: Colors.amber,num:1.toString()),
                x(color: Colors.red,num:2.toString()),
                x(color: Colors.amber,num:1.toString()),
                x(color: Colors.blue,num:2.toString()),
                x(color: Colors.amber,num:1.toString()),
                x(color: Colors.blue,num:2.toString()),
                x(color: Colors.amber,num:1.toString()),
                x(color: Colors.blue,num:2.toString()),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
