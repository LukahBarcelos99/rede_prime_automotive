// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rede_prime_automotive/pages/loginPage.dart';

class RegisterSecurityPage2 extends StatelessWidget {
  const RegisterSecurityPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Profile Image of user.
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            //Field to put the name of security.
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Website",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Field to put the e-mail
            TextFormField(
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "CEP",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Bairro",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Field to put the telphone number
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Rua",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Field to put the telphone number 2
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Complemento",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Create a password
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Cidade",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            //Orientations and tips to create a password
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 5,
            ),

            SizedBox(
              height: 5,
            ),

            //Text Field to "Estado"
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Estado",
                labelStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),

            //Buttom to confirm the cadastration.
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
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Cadastrar",
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
              height: 8,
            ),

            //Buttom to cancel the operation.
            Container(
              height: 27,
              alignment: Alignment.center,
              child: FlatButton(
                child: Text(
                  "Voltar",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
