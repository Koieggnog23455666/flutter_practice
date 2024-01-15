import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../utils/catalog.dart';
import 'CatalogItems.dart';
import 'package:iphonepractice/widgets/Theme.dart';

class CatalogList extends StatefulWidget {
  const CatalogList({super.key});

  @override
  State<CatalogList> createState() => _CatalogListState();
}

class _CatalogListState extends State<CatalogList> {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        shrinkWrap:true,
        itemBuilder: (context,index){
      final catalog= Catalog.Products[index];
      return InkWell(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeDetailPage(catalog: catalog,)));
      },child: CatalogItem( catalog: catalog,));
    },itemCount: Catalog.Products.length
    );
  }
}

class HomeDetailPage extends StatelessWidget{
  final Items catalog;

  const HomeDetailPage({Key? key, required this.catalog}):assert(catalog!=null),super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ButtonBar(
        buttonPadding: EdgeInsets.only(left: 0),
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\₹${catalog.price}".text.xl4.bold.make(),
          ElevatedButton(onPressed: (){},style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(theme.Purpleish),

          ), child: 'Buy'.text.bold.color(Colors.black).make()).wh(100, 50)
        ],
      ).p32().color(Colors.white),
      backgroundColor: theme.Darkish,
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(tag: Key(catalog.id.toString())
                ,child: Image.network(catalog.image)).h32(context),
            Expanded(child: VxArc(
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              height: 20,
              child: Container(
                padding:EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                width: context.screenWidth,
                color: Colors.white,
                child: Column(
                  children: [
                    catalog.name.text.color(theme.Purpleish).bold.xl4.make(),catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                  ],
                ).py32(),
              ),
            ))
          ],
        ).p16(),
      )
    );
  }
}