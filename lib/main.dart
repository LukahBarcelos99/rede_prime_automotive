// ignore_for_file: prefer_const_constructors

import 'package:rede_prime_automotive/pages/loginPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rede Prime Automotive',
      debugShowCheckedModeBanner: false,
      //Remove the debug label in app.
      theme: ThemeData(primarySwatch: Colors.amber),
      //Color amber gone modify to 0xffd2ae6d - Gold Color.
      home: LoginPage(),
    );
  }
}
