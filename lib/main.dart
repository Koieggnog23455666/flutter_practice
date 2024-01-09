import 'package:flutter/material.dart';
import 'package:iphonepractice/Pages/WelcomePage.dart';
import 'package:iphonepractice/Pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/WelcomePage",
      routes: {//routes to many pages
        '/':(context)=> MyHomePage(title: 'practice'),//default routes sign "/"
        '/WelcomePage':(context)=> WelcomePage(),
      },
    );
  }
}




