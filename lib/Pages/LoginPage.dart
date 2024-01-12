import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iphonepractice/Pages/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ObsecureText=true;
  bool button=false;
final _formKey =GlobalKey<FormState>();
validateToHome (BuildContext context)async{
  if(_formKey.currentState!.validate()){
    setState(() {
      button=true;
    });
    await Future.delayed(Duration(seconds: 1));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Home')));
    setState(() {
      button=false;
    });
  }
}
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(

        // backgroundColor: Colors.white,
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
                    validator: (value){
                    if(value!.isEmpty){
                      return "Username cannot be Empty";
                    }
                    return null;
                    },

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
                    validator: (value){
                      if(value!.isEmpty){
                        return "Password cannot be empty";
                      }
                      else if(value.length<6){
                        return "Password should contain atleat 6 characters";
                      }
                      return null;
                    },
                  ),SizedBox(
                    height: 20,
                  ),
                  AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(button?30:12)
                    ),
                    width: button?50:250,
                    duration: Duration(seconds: 1),
                    child: ElevatedButton(onPressed: ()=>validateToHome(context), child:button?FaIcon(Icons.done_outline,color: Colors.white,): Text('Login',style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple,
                        padding: EdgeInsets.all(0),
                        fixedSize: Size(250, 50),
                        shadowColor: Colors.deepPurple,
                        elevation: 5,
                        backgroundColor: Colors.deepPurple,

                      ),


                    ),
                  )
                ],
              ),
            )
          ],
        )
      ),
    );

  }
}
