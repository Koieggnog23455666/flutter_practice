import 'package:flutter/material.dart';
import 'package:iphonepractice/Pages/LoginPage.dart';
import 'package:iphonepractice/Pages/homepage.dart';
import 'package:iphonepractice/widgets/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.black,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme().lightTheme(context),

      // darkTheme: theme().darkTheme(context),
      initialRoute: "/",
      routes: {//routes to many pages
        '/':(context)=> MyHomePage(title: 'practice'),//default routes sign "/"
        '/LoginPage':(context)=> LoginPage(),
      },
    );
  }
}




