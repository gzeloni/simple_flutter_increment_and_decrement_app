import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage1(),
    );
  }
}

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  int texto = 0;

  void decrementar() {
    setState(() {
      texto--;
    });
  }

  void incrementar() {
    setState(() {
      texto++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            centerTitle: true,
            title: const Text('App Contador',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center)),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Contador",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                texto.toString(),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 70,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        fixedSize: Size(100, 100)),
                    onPressed: incrementar,
                    onLongPress: () => {incrementar()},
                    child: const Text(
                      'Incrementar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Divider(),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        fixedSize: Size(100, 100)),
                    onPressed: decrementar,
                    onLongPress: () => {decrementar()},
                    child: const Text(
                      'Decrementar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              )
            ]));
  }
}
