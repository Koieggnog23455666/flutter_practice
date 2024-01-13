import 'package:flutter/material.dart';
import 'package:iphonepractice/widgets/Theme.dart';
import 'package:iphonepractice/widgets/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme().darkTheme(context),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
        appBar: AppBar(
      
          title: Text('Practice'),
        ),
        body:Center(
          child: Text('Hello ',style: TextStyle(fontFamily: 'Poppins',fontSize: 30),),

        ),
        drawer: drawerWidget(),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}