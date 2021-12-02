// ignore_for_file: prefer_const_constructors, unused_field, avoid_print, use_key_in_widget_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:rede_prime_automotive/pages/loginPage.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  //This widget is the root of my application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rede Prime Automotive',
      debugShowCheckedModeBanner: false,
      //Remove the debug label in app.
      theme: ThemeData(primarySwatch: Colors.amber),
      //Color amber gone modify to 0xffd2ae6d - Gold Color.
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('Você ta com um problema! ${snapshot.error.toString()}');
            return Text('Alguma coisa está de errado!');
          } else if (snapshot.hasData) {
            return LoginPage();
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      //home: LoginPage(),
    );
  }
}
