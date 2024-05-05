import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plainteshop/pages/login/loginPage.dart';

class SignupPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed:(){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,)
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [

            SizedBox(height: 60,),
            _titreText(),
            SizedBox(height: 30,),
            _usernameField(),
            SizedBox(height: 30,),
            _posteField(),
            SizedBox(height: 30,),
            _adressMailField(),
            SizedBox(height: 30,),
            _passWordField(),
            SizedBox(height: 30),
            _confirmPassWordField(),
            SizedBox(height: 30,),
            SizedBox(height: 40,),
            _validationBtn()

          ],
        ),
      ),
    );


      /*resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed:(){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,)
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("Sign Up",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ),),
                    SizedBox(height: 30,),
                    Text("Sign up your account",
                      style: TextStyle(fontSize: 15,
                        color: Colors.grey[700],),),

                    _usernameFiled(),
                  ],
                ),

               / Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget> [
                      inputFile(label: "Name"),
                      inputFile(label: "Poste"),
                      inputFile(label: "E-mail"),
                      inputFile(label: "Password", obscureText: true),
                      inputFile(label: "Confirm Password"),
                    ],),
                ),/
                Container(
                  padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                  decoration:
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(50),

                  ),

                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: (){},
                    color:Colors.deepOrange,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      "Sign Up", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color:Colors.white
                    ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("are you an account?"),
                    Text(" Login", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18

                    ),)
                  ],
                ),
              ],
            ))

          ],
        ),
      ),


    );*/
  }

  Widget _titreText(){
    return Text("Créer un compte", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25));
  }

  Widget _usernameField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Name",
        prefixIcon: Icon(Icons.verified_user)
      ),
    );
  }

  Widget _posteField(){
    return TextField(
      decoration: InputDecoration(
        border : OutlineInputBorder(),
        labelText: "Poste",
        prefixIcon: Icon(Icons.accessibility)
      ),
    );
  }

  Widget _adressMailField(){
    return TextField(
      decoration: InputDecoration(
        border : OutlineInputBorder(),
        labelText: "E-mail",
        prefixIcon: Icon(Icons.mail)

      )
    );
  }
Widget _passWordField(){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Password",
        prefixIcon: Icon(Icons.password)
      )
    );
}

Widget _confirmPassWordField(){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Confirm Password",
          prefixIcon: Icon(Icons.password)
      ),
    );
}

Widget _validationBtn(){
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 20)
        ),
        onPressed: (){
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
        },
        icon: Icon(Icons.check_box),
        label: const Text("Creer", style: TextStyle(fontSize: 20, color: Colors.white)),
      ),

    );
}

}