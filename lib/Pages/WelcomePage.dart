import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool ObsecureText=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
        Image.asset('assets/images/undraw login.png',height: 300,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                decoration: InputDecoration(
                  labelText: 'USERNAME',
                  hintText: 'Enter username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      width: 6,
                    )
                  ),

                ),

                ),
            SizedBox(
              height: 20,
            ),
                TextFormField(

                  obscureText: ObsecureText,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    hintText: 'Enter password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    suffixIcon:IconButton(color: Colors.redAccent,onPressed: () { setState(() {ObsecureText=!ObsecureText; }); }
                      ,icon: Icon(ObsecureText?Icons.visibility:Icons.visibility_off) ,
                      )
                  ),
                ),SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: (){}, child: Text('Login',style: GoogleFonts.abel(textStyle: TextStyle(color: Colors.yellowAccent,),)),style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.blueGrey),
                ),

                )
              ],
            ),
          )
        ],
      )
    );

  }
}
