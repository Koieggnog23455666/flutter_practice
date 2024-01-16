import 'package:flutter/material.dart';
import 'package:iphonepractice/Pages/CartPage.dart';
import 'package:iphonepractice/Pages/InsideCatalogItems.dart';
import 'package:iphonepractice/Pages/LoginPage.dart';
import 'package:iphonepractice/Pages/homepage.dart';
import 'package:iphonepractice/utils/routes.dart';
import 'package:iphonepractice/widgets/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: theme().lightTheme(context),
      themeMode: ThemeMode.system,
      theme: theme.darkTheme(context),
      initialRoute: Myroutes.homeRoute,
      routes: {//routes to many pages
        '/':(context)=> MyHomePage(title: 'practice'),//default routes sign "/"
        Myroutes.loginRoute:(context)=> LoginPage(),
        Myroutes.cartRoute:(context)=> CartPage(),
        Myroutes.homeRoute:(context)=>MyHomePage(title: 'Practice',)
      },
    );
  }
}




