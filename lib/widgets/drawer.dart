import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class drawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Drawer(
  child: ListView(
    padding: EdgeInsets.all(0),
    
    children: const [
      
      DrawerHeader(child: UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Colors.black12,),
        accountName: Text('Krishna Rai',style: TextStyle(fontFamily: 'Poppins'),),
        accountEmail: Text('krai100200@gmail.com',style: TextStyle(fontFamily: 'Poppins')),
        currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/images/Profile photo.jpeg')),
        margin: EdgeInsets.all(0),
      ),
      padding: EdgeInsets.all(0),),

      ListTile(
        hoverColor: Colors.black,
        leading: Icon(CupertinoIcons.home),
        title: Text('Home',style: TextStyle(fontFamily: 'Poppins',),
        ),
      ) ,ListTile(
        leading: Icon(CupertinoIcons.profile_circled),
        title: Text('Profile',style: TextStyle(fontFamily: 'Poppins',),
        ),
      ) ,ListTile(
        leading: Icon(CupertinoIcons.mail_solid),
        title: Text('Email',style: TextStyle(fontFamily: 'Poppins',),
        ),
      ) ,

    ],
  )
   );
  }

}