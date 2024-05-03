import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _enteteShop(),
      drawer: _menuPrincipale(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Shop Orange", style: TextStyle(fontWeight: FontWeight.bold),), Icon(Icons.home_filled)],
            ),
            Row(

            )
            //Expanded(child: _list())
          ],
        ),
      ),

    );
  }
  AppBar _enteteShop(){
    return AppBar(
      elevation: 0,
      title: Text("Plainte Shop", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
      backgroundColor: Colors.deepOrange,
      // couleur element appbar
      foregroundColor: Colors.white,
      //boutton
      actions: [
        IconButton(
            onPressed: (){},
              icon: Icon(Icons.notification_add),
            ),
        IconButton(
          onPressed: (){},
            icon: Icon(Icons.sync),
        )
      ],
    );
  }
  //button option

Drawer _menuPrincipale(){
   return Drawer(
     child: ListView(
       children: [
         DrawerHeader(
           decoration: BoxDecoration(color: Colors.deepOrange),
           child: Text(
             'Plainte Shop',
             style: TextStyle(fontWeight: FontWeight.bold),
           ),

         ),
         TextButton(
           onPressed: () {

           },
           style: TextButton.styleFrom(
             textStyle: TextStyle(
               decoration: TextDecoration.underline,
             ),
           ),
           child: ListTile(
             title: Text("Profil"),
             leading: Icon(Icons.person),
           ),
         ),
         TextButton(
           onPressed: () {
           },
           style: TextButton.styleFrom(
             textStyle: TextStyle(
               decoration: TextDecoration.underline,
             ),
           ),

           child: ListTile(
             title: Text("Tableau de bord"),
             leading: Icon(Icons.dashboard),
           ),
         ),
         TextButton(
           onPressed: (){

           },
           style: TextButton.styleFrom(
             textStyle: TextStyle(
               decoration: TextDecoration.underline
             )
           ),
           child: ListTile(
             title: Text("Paramètres"),
             leading: Icon(Icons.settings)
           )
         ),

         TextButton(
           onPressed: (){

           },
           style: TextButton.styleFrom(
             textStyle: TextStyle(
               decoration: TextDecoration.underline
             )
           ),
           child: ListTile(
             title: Text("A propos"),
             leading: Icon(Icons.info_outline),
           )
         ),

         Divider(),
         TextButton(
           onPressed: () {

           },
           style: TextButton.styleFrom(
             textStyle: TextStyle(
               decoration: TextDecoration.underline,
             ),
           ),
           child: ListTile(
             title: Text("Déconnexion"),
             leading: Icon(Icons.logout_outlined),
           ),
         ),
       ],
     ),
   );
}

}