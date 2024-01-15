import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iphonepractice/widgets/Theme.dart';
import '../utils/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

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
          child: CircularProgressIndicator(color: Colors.tealAccent,),)


          ],
        ),
              ),
            ));
  }
}

class CatalogList extends StatefulWidget {
  const CatalogList({super.key});

  @override
  State<CatalogList> createState() => _CatalogListState();
}

class _CatalogListState extends State<CatalogList> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        shrinkWrap:true,itemBuilder: (context,index){
      final catalog= Catalog.Products[index];
      return CatalogItem( catalog: catalog,);
    },itemCount: Catalog.Products.length
    );
  }
}
class CatalogItem extends StatelessWidget {
  const CatalogItem({Key? key, required this.catalog}):assert(catalog!=null), super(key: key);
  final Items catalog;

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          ClipOval(child: Image.network(catalog.image,).box.color(Colors.white).rounded.make().p16().h32(context).w32(context)),
          Expanded(child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [catalog.name.text.bold.lg.make(),catalog.desc.text.textStyle(context.captionStyle).make(),
              10.heightBox,
              ButtonBar(

                buttonPadding: EdgeInsets.only(left: 0),
                alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\₹${catalog.price}".text.bold.make(),
                ElevatedButton(onPressed: (){},style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(theme.Purpleish),

                ), child: 'Buy'.text.bold.color(Colors.black).make())
              ],
            ).pOnly(right: 8)
            ],
          ))
        ],
      )
    ).color(theme.Darkish).rounded.square(150).make().py12();
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        'Catalog App'.text.xl5.bold.color(theme.Purpleish).make(),
        'Trending Products'.text.xl.color(theme.Purpleish).make(),
      ],
    );
  }
}

