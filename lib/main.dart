import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.greenAccent,
        backgroundColor: const Color(0xffe5e5e5),
        buttonColor: Colors.black87,
        textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.black87),
          displayMedium: TextStyle(color: Colors.black54),
          displayLarge: TextStyle(color: Colors.black87),
        ),
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xff2bbd7e),
        backgroundColor: const Color(0xff121212),
        buttonColor: Colors.white24,
        textTheme: const TextTheme(
          titleMedium: TextStyle(color: Colors.white70),
          displayMedium: TextStyle(color: Colors.white54),
          displayLarge: TextStyle(color: Colors.white70),
        ),
      ),
      initial: AdaptiveThemeMode.system,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
        home: const Calculator(),
      ),
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
        style: const TextStyle(fontSize: 30.0),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    print(AdaptiveTheme.of(context).mode);

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
        ),
        elevation: 0.0,
        title: Text(
          'Calculator',
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 20.0),
        ),
        actions: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
            child: IconButton(
              // onPressed: () => AdaptiveTheme.of(context).toggleThemeMode(),
              onPressed: () =>
                  (AdaptiveTheme.of(context).mode == AdaptiveThemeMode.light)
                      ? (AdaptiveTheme.of(context).setDark())
                      : (AdaptiveTheme.of(context).setLight()),
              icon: Icon(
                Icons.wb_sunny,
                color: Theme.of(context).textTheme.titleMedium?.color,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10.0, 35.0, 10.0, 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 4,
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
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(fontSize: 45.0),
                          ),
                          Text(
                            '=0',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge
                                ?.copyWith(fontSize: 65.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Expanded(
              flex: 10,
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 7.0,
                mainAxisSpacing: 7.0,
                children: [
                  myButton(color: Theme.of(context).buttonColor, text: 'AC'),
                  myButton(color: Colors.blueGrey, text: '( )'),
                  myButton(color: Colors.blueGrey, text: '%'),
                  myButton(color: Colors.blueGrey, text: '÷'),
                  myButton(color: Theme.of(context).primaryColor, text: 7),
                  myButton(color: Theme.of(context).primaryColor, text: 8),
                  myButton(color: Theme.of(context).primaryColor, text: 9),
                  myButton(color: Colors.blueGrey, text: '×'),
                  myButton(color: Theme.of(context).primaryColor, text: 4),
                  myButton(color: Theme.of(context).primaryColor, text: 5),
                  myButton(color: Theme.of(context).primaryColor, text: 6),
                  myButton(color: Colors.blueGrey, text: '-'),
                  myButton(color: Theme.of(context).primaryColor, text: 1),
                  myButton(color: Theme.of(context).primaryColor, text: 2),
                  myButton(color: Theme.of(context).primaryColor, text: 3),
                  myButton(color: Colors.blueGrey, text: '+'),
                  myButton(color: Theme.of(context).primaryColor, text: 0),
                  myButton(color: Theme.of(context).primaryColor, text: '⋅'),
                  myButton(color: Theme.of(context).buttonColor, text: '⌫'),
                  myButton(color: Colors.redAccent, text: '='),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
