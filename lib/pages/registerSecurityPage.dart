// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:rede_prime_automotive/pages/registerSecurityPage2.dart';

class RegisterSecurityPage extends StatelessWidget {
  const RegisterSecurityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Profile Image of user.
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              width: 180,
              height: 180,
              alignment: Alignment(0.60, 1),
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(
                  image: AssetImage("assets/profileImage.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),

              //Buttom to change profile image user.
              child: Container(
                  height: 45,
                  width: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(
                      Radius.circular(45),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),

            //Field to put the name of security.
            TextFormField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Nome da Seguradora",
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
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "E-mail corporativo",
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
              keyboardType: TextInputType.number,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "CNPJ",
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
              keyboardType: TextInputType.number,
              obscureText: true,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Telefone 1",
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
              keyboardType: TextInputType.number,
              obscureText: true,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Telefone 2",
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
                labelText: "Senha",
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
            Text(
              "* A senha deve conter no m??nimo 8 d??gitos",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.amber,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "* Para maior seguran??a utilize n??meros, letras e s??mbolos",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.amber,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 5,
            ),

            //Text Field to "confirm your password"
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              style: TextStyle(color: Colors.black54, fontSize: 15),
              decoration: InputDecoration(
                labelText: "Confirme sua senha",
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
                        builder: (context) => RegisterSecurityPage2(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Pr??ximo",
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
                  "Cancelar",
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
