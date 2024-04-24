import 'package:flutter/material.dart';
import 'package:plainteshop/pages/loginPage/signUpPage.dart';

import '../loginPage/loginPage.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children:<Widget> [
                  Text(
                    "Bienvenue dans PlainteShop",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,

                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      "packages have newer versions incompatible with dependency constraints. Try `flutter pub outdated` for more information",
                      textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  )

                ],
              ),
              Container(
                padding: EdgeInsets.only(top:100),
                height: 200,
                decoration:
                BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/orangelogo.png",),
                        fit: BoxFit.fitHeight
                    )
                ),
              ),

              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },

                    shape: RoundedRectangleBorder(
                      side :BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                      ),
                    ),

                  ),
                  SizedBox(height: 20,),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder:  (context)=>SignupPage()));
                    },
                    color:Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color:Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
