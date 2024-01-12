import 'package:flutter/material.dart';
import 'package:iphonepractice/utils/catalog.dart';
import 'package:iphonepractice/widgets/Theme.dart';
import 'package:iphonepractice/widgets/drawer.dart';
import '../widgets/Itemwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final dummylist= List.generate(20, (index) => Catalog().Products[0]);
    return MaterialApp(
      theme: theme().darkTheme(context),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
        appBar: AppBar(
      
          title: Text('Practice'),
        ),
        body:Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
          child: ListView.builder(itemCount: dummylist.length,
              itemBuilder: (context,index){
            return ItemWidget(item:dummylist[index]);
          }),
        ),

        drawer: drawerWidget(),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

