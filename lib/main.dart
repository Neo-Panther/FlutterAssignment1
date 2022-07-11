import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Assignment 1',
      theme: ThemeData(),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottomOpacity: 0.5,
        backgroundColor: const Color.fromARGB(255, 255, 149, 73),
        toolbarHeight: 50,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: <double>[0.0, 0.6, 1.0],
              colors: <Color>[
                Color.fromARGB(255, 191, 126, 239),
                Color.fromARGB(255, 233, 196, 188),
                Color.fromARGB(255, 245, 229, 216),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    width: 0.375 * MediaQuery.of(context).size.width,
                    height: 0.16 * MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 102, 98, 244),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    width: 0.375 * MediaQuery.of(context).size.width,
                    height: 0.16 * MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 102, 98, 244),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                width: 0.209 * MediaQuery.of(context).size.width,
                height: 0.127 * MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 174, 122, 213),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 13),
                width: 0.667 * MediaQuery.of(context).size.width,
                height: 0.05 * MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 25, 14, 31),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Circle(), Circle(), Circle(), Circle(),],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.all(10),
            width: 0.12 * MediaQuery.of(context).size.width,
            height: 0.12 * MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 83, 89, 249),
              shape: BoxShape.circle,
            ),
          );
  }
}
