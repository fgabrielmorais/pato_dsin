import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pato'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _patos = "assets/pokemon.png";

  List<String> listaPatos = [
    "assets/pato1.png",
    "assets/pato2.png",
    "assets/pato3.jpg",
    "assets/pato4.jpg",
    "assets/pato5.png",
    "assets/pato6.jpg"
  ];

  void _gerandoPatos() {
    int i = Random().nextInt(listaPatos.length);
    setState(() {
      _patos = listaPatos[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              _patos,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _gerandoPatos,
        backgroundColor: Colors.transparent,
        elevation: 0,
        tooltip: 'Mostrar um pato',
        child: const Icon(Icons.add),
      ),
    );
  }
}
