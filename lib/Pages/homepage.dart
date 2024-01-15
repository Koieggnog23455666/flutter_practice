import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iphonepractice/widgets/Theme.dart';
import '../utils/catalog.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/HomeWidgets/CatalogHeader.dart';
import '../widgets/HomeWidgets/CatalogList.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final json = await rootBundle.loadString("assets/files/catalog.json");
    final decodeCatalog = jsonDecode(json);
    var productData = decodeCatalog["Products"];
    Catalog.Products = List.from(productData)
        .map<Items>((item) => Items.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: theme.Darkish,
        body: SafeArea(
              child: Container(

        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CatalogHeader(),
           if (Catalog.Products!=null && Catalog.Products.isNotEmpty)
          CatalogList().expand()
         else
           Center(
          child: CircularProgressIndicator(color: Colors.teal,),).expand()


          ],
        ),
              ),
            ));
  }
}






