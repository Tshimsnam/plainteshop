import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
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
                Text("Connectez-vous",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold ),),
                SizedBox(height: 30,),
                Text("Login to your account",
                style: TextStyle(fontSize: 15,
                color: Colors.grey[700],),)
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget> [
                inputFile(label: "E-mail"),
                inputFile(label: "Password", obscureText: true)
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
                  "Connexion", style: TextStyle(
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
                Text("vous avez pas un compte?"),
                Text(" Créer ", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18

                ),)
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 100),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/orangelogo.png"),
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ))

        ],
      ),
    ),

    );
  }
}

Widget inputFile({label, obscureText = false}){
  return Column(
    crossAxisAlignment:CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87,

        ),
      ),
      SizedBox(height: 5,),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical:0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          )
        ),
      ),
      SizedBox(height: 10,)
    ],
  );
}
 
