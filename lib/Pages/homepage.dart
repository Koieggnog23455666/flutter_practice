import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iphonepractice/widgets/Theme.dart';
import 'package:iphonepractice/widgets/drawer.dart';
import '../utils/catalog.dart';
import '../widgets/Itemwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  void initState(){
    super.initState();
    loadData();
  }
  loadData()async{
    await Future.delayed(Duration(seconds: 2));
    final json=await rootBundle.loadString("assets/files/catalog.json");
    final decodeCatalog= jsonDecode(json);
    var productData= decodeCatalog["Products"];
    Catalog.Products= List.from(productData).map<Items>((item) => Items.fromMap(item)).toList();
    setState(() {});

  }

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      theme: theme().darkTheme(context),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      
        appBar: AppBar(
      
          title: Text('Practice'),
        ),
        body:Padding(
          padding: const EdgeInsets.all(8.0),
          child:Catalog.Products!=null && Catalog.Products.isNotEmpty?
          GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,mainAxisSpacing: 5,
            crossAxisSpacing: 5
          ) ,
              itemBuilder: (context,index){
            final item = Catalog.Products[index];
            return Card(
              child: GridTile(child: Image.network(item.image),footer: Text(item.name),),
            );
          },
          itemCount: Catalog.Products.length,

          ):Center(child: CircularProgressIndicator(),)

        ),
        drawer: drawerWidget(),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}