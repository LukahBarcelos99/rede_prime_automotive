// ignore_for_file: file_names, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import

import "package:flutter/material.dart";
import 'package:rede_prime_automotive/pages/registerUserPage.dart';
import 'package:rede_prime_automotive/pages/registerSecurityPage.dart';

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar Icon to return to Main Page
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),

      //Building interface
      body: Container(
        padding: EdgeInsets.only(
          top: 80,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 160,
              height: 160,
              child: Image.asset('assets/redePrimeAutomotive.png'),
            ),
            //Choice the type of sign in
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Se cadastrar como... ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 30,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterUserPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Usuário",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.amber,
                          fontSize: 20,
                          fontFamily: "Arial",
                        ),
                      ),
                      //Putting a icon of User
                      //Container(
                      //child: SizedBox(
                      // child: Image.asset("assets/icon/user-solid.svg"),
                      //height: 28,
                      //width: 28,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterSecurityPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Seguradora",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.amber,
                          fontSize: 20,
                          fontFamily: "Arial",
                        ),
                      ),
                      //Putting a icon of User
                      //Container(
                      //child: SizedBox(
                      // child: Image.asset("assets/icon/user-solid.svg"),
                      //height: 28,
                      //width: 28,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
