// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses'),
      ),
      body: ListView(children: <Widget>[
        Card(
          color: Colors.orange,
          elevation: 5,
          child: Container(
            width: double.infinity,
            child: Text('CHART'),
          ),
        ),
        UserTransactions(),
      ]),
    );
  }
}
