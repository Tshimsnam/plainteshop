import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plainteshop/pages/loginPage/loginPage.dart';

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
                        color: Colors.grey[700],),)
                  ],
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget> [
                      inputFile(label: "Name"),
                      inputFile(label: "FirstName"),
                      inputFile(label: "E-mail"),
                      inputFile(label: "Password", obscureText: true),
                      inputFile(label: "Confirm Password"),
                    ],),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                  decoration:
                  BoxDecoration(
                    borderRadius: BorderRadius.circular(50),

                  ),

                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){},
                    color:Colors.deepOrange,
                    elevation: 0,
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


    );
  }

}