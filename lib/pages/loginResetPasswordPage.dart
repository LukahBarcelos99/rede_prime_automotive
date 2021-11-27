// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class LoginResetPasswordPage extends StatelessWidget {
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
            //Orientation of "Forgot password"
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Para recuperar sua senha, digite seu e-mail cadastrado por gentileza.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),

            //Field "e-mail"
            TextFormField(
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Digite seu E-mail...",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Button "Enviar e-mail"
            ButtonTheme(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 30.0,
              child: RaisedButton(
                //action of button.
                onPressed: () => {},
                child: Text(
                  "Enviar e-mail",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.amber,
                    fontSize: 20,
                    fontFamily: "Arial",
                  ),
                ),
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
